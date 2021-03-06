% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-deprecate.R
\name{drake_meta}
\alias{drake_meta}
\title{Deprecated. Compute the initial pre-build metadata of a target or import.}
\usage{
drake_meta(target, config)
}
\arguments{
\item{target}{Character scalar, name of the target
to get metadata.}

\item{config}{Master internal configuration list produced
by \code{\link[=drake_config]{drake_config()}}.}
}
\value{
A list of metadata on a target. Does not include
the file modification time if the target is a file.
That piece is computed later in \code{\link[=make]{make()}} by
\code{drake:::store_outputs()}.
}
\description{
Deprecated on 2019-01-12.
}
\details{
The metadata helps determine if the
target is up to date or outdated. The metadata of imports
is used to compute the metadata of targets.
Target metadata is computed with \code{drake_meta()}, and then
\code{drake:::store_outputs()} completes the metadata
after the target is built.
In other words, the output of \code{drake_meta()} corresponds
to the state of the target immediately before \code{\link[=make]{make()}}
builds it.
See \code{\link[=diagnose]{diagnose()}} to read the final metadata of a target,
including any errors, warnings, and messages in the last build.
}
\seealso{
\code{\link[=diagnose]{diagnose()}}, \code{\link[=dependency_profile]{dependency_profile()}}, \code{\link[=make]{make()}}
}
\keyword{internal}
