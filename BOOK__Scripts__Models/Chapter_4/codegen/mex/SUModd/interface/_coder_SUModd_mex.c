/*
 * Prerelease License - for engineering feedback and testing purposes
 * only. Not for sale.
 *
 * _coder_SUModd_mex.c
 *
 * Code generation for function '_coder_SUModd_mex'
 *
 */

/* Include files */
#include "_coder_SUModd_mex.h"
#include "SUModd_data.h"
#include "SUModd_initialize.h"
#include "SUModd_terminate.h"
#include "_coder_SUModd_api.h"
#include "rt_nonfinite.h"

/* Function Definitions */
void SUModd_mexFunction(int32_T nlhs, int32_T nrhs, const mxArray *prhs[1])
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  st.tls = emlrtRootTLSGlobal;
  /* Check for proper number of arguments. */
  if (nrhs != 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 1, 4,
                        6, "SUModd");
  }
  if (nlhs > 0) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 6,
                        "SUModd");
  }
  /* Call the function. */
  SUModd_api(prhs[0]);
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs,
                 const mxArray *prhs[])
{
  (void)plhs;
  mexAtExit(&SUModd_atexit);
  /* Module initialization. */
  SUModd_initialize();
  /* Dispatch the entry-point. */
  SUModd_mexFunction(nlhs, nrhs, prhs);
  /* Module termination. */
  SUModd_terminate();
}

emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLSR2022a(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1,
                           NULL, "windows-1252", true);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_SUModd_mex.c) */
