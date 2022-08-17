/*
 * Prerelease License - for engineering feedback and testing purposes
 * only. Not for sale.
 *
 * _coder_Leibnitz_mex.c
 *
 * Code generation for function '_coder_Leibnitz_mex'
 *
 */

/* Include files */
#include "_coder_Leibnitz_mex.h"
#include "Leibnitz_data.h"
#include "Leibnitz_initialize.h"
#include "Leibnitz_terminate.h"
#include "_coder_Leibnitz_api.h"
#include "rt_nonfinite.h"

/* Function Definitions */
void Leibnitz_mexFunction(int32_T nlhs, mxArray *plhs[1], int32_T nrhs,
                          const mxArray *prhs[1])
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  const mxArray *outputs;
  st.tls = emlrtRootTLSGlobal;
  /* Check for proper number of arguments. */
  if (nrhs != 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 1, 4,
                        8, "Leibnitz");
  }
  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 8,
                        "Leibnitz");
  }
  /* Call the function. */
  Leibnitz_api(prhs[0], &outputs);
  /* Copy over outputs to the caller. */
  emlrtReturnArrays(1, &plhs[0], &outputs);
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs,
                 const mxArray *prhs[])
{
  mexAtExit(&Leibnitz_atexit);
  /* Module initialization. */
  Leibnitz_initialize();
  /* Dispatch the entry-point. */
  Leibnitz_mexFunction(nlhs, plhs, nrhs, prhs);
  /* Module termination. */
  Leibnitz_terminate();
}

emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLSR2022a(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1,
                           NULL, "windows-1252", true);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_Leibnitz_mex.c) */
