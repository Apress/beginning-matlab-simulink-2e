/*
 * Prerelease License - for engineering feedback and testing purposes
 * only. Not for sale.
 *
 * Leibnitz_terminate.c
 *
 * Code generation for function 'Leibnitz_terminate'
 *
 */

/* Include files */
#include "Leibnitz_terminate.h"
#include "Leibnitz_data.h"
#include "_coder_Leibnitz_mex.h"
#include "rt_nonfinite.h"

/* Function Definitions */
void Leibnitz_atexit(void)
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

void Leibnitz_terminate(void)
{
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (Leibnitz_terminate.c) */
