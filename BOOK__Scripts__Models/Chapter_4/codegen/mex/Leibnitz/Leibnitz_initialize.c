/*
 * Prerelease License - for engineering feedback and testing purposes
 * only. Not for sale.
 *
 * Leibnitz_initialize.c
 *
 * Code generation for function 'Leibnitz_initialize'
 *
 */

/* Include files */
#include "Leibnitz_initialize.h"
#include "Leibnitz_data.h"
#include "_coder_Leibnitz_mex.h"
#include "rt_nonfinite.h"

/* Function Declarations */
static void Leibnitz_once(void);

/* Function Definitions */
static void Leibnitz_once(void)
{
  mex_InitInfAndNan();
}

void Leibnitz_initialize(void)
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2022b(&st);
  emlrtClearAllocCountR2012b(&st, false, 0U, NULL);
  emlrtEnterRtStackR2012b(&st);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    Leibnitz_once();
  }
}

/* End of code generation (Leibnitz_initialize.c) */
