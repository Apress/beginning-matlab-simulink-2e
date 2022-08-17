/*
 * Prerelease License - for engineering feedback and testing purposes
 * only. Not for sale.
 *
 * SUModd_initialize.c
 *
 * Code generation for function 'SUModd_initialize'
 *
 */

/* Include files */
#include "SUModd_initialize.h"
#include "SUModd_data.h"
#include "_coder_SUModd_mex.h"
#include "rt_nonfinite.h"

/* Function Declarations */
static void SUModd_once(void);

/* Function Definitions */
static void SUModd_once(void)
{
  mex_InitInfAndNan();
}

void SUModd_initialize(void)
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
    SUModd_once();
  }
}

/* End of code generation (SUModd_initialize.c) */
