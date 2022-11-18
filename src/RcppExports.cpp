// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// fit_linear_model
SEXP fit_linear_model(SEXP qr, SEXP qraux, SEXP exprs, SEXP subset, SEXP get_coefs);
RcppExport SEXP _ABCutilities_fit_linear_model(SEXP qrSEXP, SEXP qrauxSEXP, SEXP exprsSEXP, SEXP subsetSEXP, SEXP get_coefsSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< SEXP >::type qr(qrSEXP);
    Rcpp::traits::input_parameter< SEXP >::type qraux(qrauxSEXP);
    Rcpp::traits::input_parameter< SEXP >::type exprs(exprsSEXP);
    Rcpp::traits::input_parameter< SEXP >::type subset(subsetSEXP);
    Rcpp::traits::input_parameter< SEXP >::type get_coefs(get_coefsSEXP);
    rcpp_result_gen = Rcpp::wrap(fit_linear_model(qr, qraux, exprs, subset, get_coefs));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_ABCutilities_fit_linear_model", (DL_FUNC) &_ABCutilities_fit_linear_model, 5},
    {NULL, NULL, 0}
};

RcppExport void R_init_ABCutilities(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}