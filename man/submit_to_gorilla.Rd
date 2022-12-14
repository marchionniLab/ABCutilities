% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Gorilla2REVIGO.R
\name{submit_to_gorilla}
\alias{submit_to_gorilla}
\title{Submit to GOrilla}
\usage{
submit_to_gorilla(
  organism = NULL,
  runmode = "hg",
  targets = NULL,
  background = NULL,
  outdir = NULL,
  perl_path = NULL
)
}
\arguments{
\item{organism}{either one of
"ARABIDOPSIS_THALIANA", "SACCHAROMYCES_CEREVISIAE",
"CAENORHABDITIS_ELEGANS", "DROSOPHILA_MELANOGASTER","DANIO_RERIO",
"HOMO_SAPIENS", "MUS_MUSCULUS", "RATTUS_NORVEGICUS".}

\item{runmode}{either 'mhg' (one ranked target list) or
'hg' (target and background list).}

\item{targets}{vector of gene symbols for
which the GO terms will be retrieved.}

\item{background}{vector of gene symbols for which the
GO terms will be retrieved and compared to the targets.}

\item{outdir}{path to directory where results should be stored.}

\item{perl_path}{Define which perl installation should be used.
If set to \code{NULL} (default), the result of \code{system("which perl")}
will be used.
Depending on where you installed the specific modules,
you may need to set a manual path here.}
}
\description{
A wrapper for submitting one (or two) list(s) of g
ene identifiers
to \href{http://cbl-gorilla.cs.technion.ac.il/}{GOrilla website}.
}
\details{
This function relies on a perl script downloaded from biostars
\url{https://www.biostars.org/p/70064/}.
It requires the following Perl modules:
\itemize{
\item \code{File::Path}
\item \code{WWW::Mechanize}
\item \code{Getopt::Long}
}

The easiest way to install those modules is to first install \code{cpanm} and
use that do install the modules above:
\enumerate{
\item \verb{cpan App::cpanminus}
\item \verb{cpanm Module::Name}, e.g. \verb{cpanm WWW::Mechanize}
}

See \url{http://www.cpan.org/modules/INSTALL.html} for more details.
}
\examples{
\dontrun{
submit_to_gorilla(
  organism = "HOMO_SAPIENS",
  targets = "sandbox/forGOrilla_gA.txt",
  background = "sandbox/forGOrilla_backgroundPx.txt",
  outdir = "sandbox/test/",
  runmode = "hg",
  perl_path = "/opt/local/bin/perl"
)

rev_res <- GOrilla2Revigo(
  GOrilla_link = "sandbox/test/",
  out_path = "/Users/frd2007/Documents/my_packs/sandbox/",
  analysis_name = "bla"
)

## to generate the REVIGO maps
REVIGO_treemap(
  revigo.data = rev_res$bla_PROCESS,
  col_palette = "Set3",
  title = "testing"
)
}

}
\seealso{
\code{\link[=GOrilla2Revigo]{GOrilla2Revigo()}}
}
