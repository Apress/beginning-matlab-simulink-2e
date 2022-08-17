/*
 * Prerelease License - for engineering feedback and testing purposes
 * only. Not for sale.
 *
 * SUModd.c
 *
 * Code generation for function 'SUModd'
 *
 */

/* Include files */
#include "SUModd.h"
#include "SUModd_data.h"
#include "rt_nonfinite.h"
#include "mwmathutil.h"

/* Variable Definitions */
static emlrtRTEInfo emlrtRTEI = {
    13,       /* lineNo */
    1,        /* colNo */
    "SUModd", /* fName */
    "E:\\MATLAB__BOOK__5\\BOOK__Scripts__Models\\Chapter_4\\SUModd.m" /* pName
                                                                       */
};

/* Function Definitions */
void SUModd(const emlrtStack *sp, real_T N)
{
  const mxArray *m;
  const mxArray *y;
  real_T Sum;
  real_T ii;
  Sum = 0.0;
  ii = 1.0;
  while (ii <= N) {
    real_T d;
    if (muDoubleScalarIsInf(ii)) {
      d = rtNaN;
    } else {
      d = muDoubleScalarRem(ii, 2.0);
    }
    if (d != 0.0) {
      Sum += ii;
    }
    ii++;
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b((emlrtConstCTX)sp);
    }
  }
  y = NULL;
  m = emlrtCreateDoubleScalar(Sum);
  emlrtAssign(&y, m);
  emlrtDisplayR2012b(y, "Sum", &emlrtRTEI, (emlrtCTX)sp);
}

/* End of code generation (SUModd.c) */
