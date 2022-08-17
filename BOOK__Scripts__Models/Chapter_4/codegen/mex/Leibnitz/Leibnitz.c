/*
 * Prerelease License - for engineering feedback and testing purposes
 * only. Not for sale.
 *
 * Leibnitz.c
 *
 * Code generation for function 'Leibnitz'
 *
 */

/* Include files */
#include "Leibnitz.h"
#include "Leibnitz_data.h"
#include "rt_nonfinite.h"
#include "mwmathutil.h"

/* Function Definitions */
real_T Leibnitz(const emlrtStack *sp, real_T E0)
{
  real_T Error;
  real_T N;
  real_T S;
  S = 0.0;
  /*  Initial value of summation */
  Error = 0.78539816339744828;
  /*  Initial Error value */
  N = 0.0;
  while (muDoubleScalarAbs(Error) > E0) {
    S += muDoubleScalarPower(-1.0, N) / (2.0 * N + 1.0);
    Error = 0.78539816339744828 - S;
    /*  Accumulates all of the values of the Error from all iterations */
    N++;
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b((emlrtConstCTX)sp);
    }
  }
  return N;
}

/* End of code generation (Leibnitz.c) */
