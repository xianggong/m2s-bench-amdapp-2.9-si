/**********************************************************************
Copyright �2014 Advanced Micro Devices, Inc. All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

�	Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.
�	Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or
 other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS
 OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
********************************************************************/

#ifdef KHR_DP_EXTENSION
#pragma OPENCL EXTENSION cl_khr_fp64 : enable
#else
#pragma OPENCL EXTENSION cl_amd_fp64 : enable
#endif

#define VECTOR_SIZE 4

/* Kernel to decompose the matrix in LU parts
    input taken from inlacematrix
    param d tells which iteration of the kernel is executing
    output matrix U is generated in the inplacematrix itself
    output matrix L is generated in the LMatrix*/

__kernel void kernelLUDecompose(__global double4* LMatrix,
                                __global double4* inplaceMatrix, int d,
                                __local double* ratio) {
  // get the global id of the work item
  int y = get_global_id(1);
  int x = get_global_id(0);
  int lidx = get_local_id(0);
  int lidy = get_local_id(1);
  // the range in x axis is dimension / 4
  int xdimension = get_global_size(0) + d / VECTOR_SIZE;
  int D = d % VECTOR_SIZE;
  // printf(" Thread ID %d %d local ID %d  %d\n",x,y,lidx,lidy);
  if (get_local_id(0) == 0) {
    // ratio needs to be calculated only once per workitem
    (D == 0)
        ? (ratio[lidy] = inplaceMatrix[y * xdimension + d / VECTOR_SIZE].s0 /
                         inplaceMatrix[d * xdimension + d / VECTOR_SIZE].s0)
        : 1;
    (D == 1)
        ? (ratio[lidy] = inplaceMatrix[y * xdimension + d / VECTOR_SIZE].s1 /
                         inplaceMatrix[d * xdimension + d / VECTOR_SIZE].s1)
        : 1;
    (D == 2)
        ? (ratio[lidy] = inplaceMatrix[y * xdimension + d / VECTOR_SIZE].s2 /
                         inplaceMatrix[d * xdimension + d / VECTOR_SIZE].s2)
        : 1;
    (D == 3)
        ? (ratio[lidy] = inplaceMatrix[y * xdimension + d / VECTOR_SIZE].s3 /
                         inplaceMatrix[d * xdimension + d / VECTOR_SIZE].s3)
        : 1;
  }

  barrier(CLK_LOCAL_MEM_FENCE);

  // check which workitems need to be included for computation
  if (y >= d + 1 && ((x + 1) * VECTOR_SIZE) > d) {
    double4 result;

    // the vectorized part begins here
    {
      result.s0 = inplaceMatrix[y * xdimension + x].s0 -
                  ratio[lidy] * inplaceMatrix[d * xdimension + x].s0;
      result.s1 = inplaceMatrix[y * xdimension + x].s1 -
                  ratio[lidy] * inplaceMatrix[d * xdimension + x].s1;
      result.s2 = inplaceMatrix[y * xdimension + x].s2 -
                  ratio[lidy] * inplaceMatrix[d * xdimension + x].s2;
      result.s3 = inplaceMatrix[y * xdimension + x].s3 -
                  ratio[lidy] * inplaceMatrix[d * xdimension + x].s3;
    }

    if (x == d / VECTOR_SIZE) {
      (D == 0) ? (LMatrix[y * xdimension + x].s0 = ratio[lidy])
               : (inplaceMatrix[y * xdimension + x].s0 = result.s0);
      (D == 1) ? (LMatrix[y * xdimension + x].s1 = ratio[lidy])
               : (inplaceMatrix[y * xdimension + x].s1 = result.s1);
      (D == 2) ? (LMatrix[y * xdimension + x].s2 = ratio[lidy])
               : (inplaceMatrix[y * xdimension + x].s2 = result.s2);
      (D == 3) ? (LMatrix[y * xdimension + x].s3 = ratio[lidy])
               : (inplaceMatrix[y * xdimension + x].s3 = result.s3);
    } else {
      inplaceMatrix[y * xdimension + x].s0 = result.s0;
      inplaceMatrix[y * xdimension + x].s1 = result.s1;
      inplaceMatrix[y * xdimension + x].s2 = result.s2;
      inplaceMatrix[y * xdimension + x].s3 = result.s3;
    }
  }
}

/*	This function will combine L & U into 1 matrix
    param: inplace matrix contains the U matrix generated by above kernel
    param: LMatrix contains L MAtrix
    The kernel will combine them together as one matrix
    We ignore the diagonal elements of LMatrix during this as
    they will all be zero
    */

__kernel void kernelLUCombine(__global double* LMatrix,
                              __global double* inplaceMatrix) {
  int i = get_global_id(1);
  int j = get_global_id(0);
  int gidx = get_group_id(0);
  int gidy = get_group_id(1);
  int dimension = get_global_size(0);
  if (i > j) {
    int dimension = get_global_size(0);
    inplaceMatrix[i * dimension + j] = LMatrix[i * dimension + j];
  }
}
