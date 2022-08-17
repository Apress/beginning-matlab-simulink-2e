/*
 * Prerelease License - for engineering feedback and testing purposes
 * only. Not for sale.
 *
 * SUModd_terminate.c
 *
 * Code generation for function 'SUModd_terminate'
 *
 */

/* Include files */
#include "SUModd_terminate.h"
#include "SUModd_data.h"
#include "_coder_SUModd_mex.h"
#include "rt_nonfinite.h"

/* Function Definitions */
void SUModd_atexit(void)
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtEnterRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  emlrtExitTimeCleanup(&emlrtContextGlobal);
}

void SUModd_terminate(void)
{
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (SUModd_terminate.c) */
