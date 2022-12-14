% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shiny_helpers.R
\name{select_factors}
\alias{select_factors}
\title{Select factors of interest based on some customized criteria}
\usage{
select_factors(in.df, max_nlevel = Inf, factor_class = NULL, keep_class = TRUE)
}
\arguments{
\item{in.df}{data.frame variant where the columns represent the different
variables/factors that need to be checked, e.g. \code{colData(sce)}.}

\item{max_nlevel}{integer specifying the maximum number of levels that are
allowed. Default: Inf}

\item{factor_class}{specify the class(es) of the factor that you either
want to include or exclude, depending on the setting of \code{keep_class}.
Default (NULL) will not check the class.}

\item{keep_class}{will only come into effect when \code{factor_class} is not
NULL; default setting (TRUE) will \strong{retain} all factors that correspond
to the class(es) defined by \code{factor_class}. Setting this to FALSE would
\strong{remove} those columns.}
}
\value{
The original data.frame without the columns that did not meet the
\code{max_nlevel} and/or \code{factor_class} filtering.
}
\description{
Some of the plotting factors need to be checked for certain
features, such as the numbers of levels. For example, you do not want to use
a variable with more than 6 levels for assigning the point sizes of a certain
plot.
}
\examples{
\dontrun{
names(select_factors(colData(sce), max_nlevel = 6))
}

}
