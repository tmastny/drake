% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api-cache.R
\name{this_cache}
\alias{this_cache}
\title{Get the cache at the exact file path specified.}
\usage{
this_cache(path = NULL, force = FALSE, verbose = 1L,
  fetch_cache = NULL, console_log_file = NULL)
}
\arguments{
\item{path}{File path of the cache.}

\item{force}{Deprecated.}

\item{verbose}{Logical or numeric, control printing to the console.
\itemize{
\item \code{0} or \code{FALSE}: print nothing.
\item \code{1} or \code{TRUE}: print only targets to build.
\item \code{2}: plus checks and cache info.
\item \code{3}: plus missing imports.
\item \code{4}: plus all imports.
\item \code{5}: plus execution and total build times for targets.
\item \code{6}: plus notifications when targets are being stored.
}}

\item{fetch_cache}{Deprecated.}

\item{console_log_file}{Character scalar,
connection object (such as \code{stdout()}) or \code{NULL}.
If \code{NULL}, console output will be printed
to the R console using \code{message()}.
If a character scalar, \code{console_log_file}
should be the name of a flat file, and
console output will be appended to that file.
If a connection object (e.g. \code{stdout()})
warnings and messages will be sent to the connection.
For example, if \code{console_log_file} is \code{stdout()},
warnings and messages are printed to the console in real time
(in addition to the usual in-bulk printing
after each target finishes).}
}
\value{
A drake/storr cache at the specified path, if it exists.
}
\description{
This function does not apply to
in-memory caches such as \code{storr_environment()}.
}
\examples{
\dontrun{
test_with_dir("Quarantine side effects.", {
if (requireNamespace("knitr")) {
clean(destroy = TRUE)
try(x <- this_cache(), silent = FALSE) # The cache does not exist yet.
load_mtcars_example() # Get the code with drake_example("mtcars").
make(my_plan) # Run the project, build the targets.
y <- this_cache() # Now, there is a cache.
z <- this_cache(".drake") # Same as above.
manual <- new_cache("manual_cache") # Make a new cache.
manual2 <- get_cache("manual_cache") # Get the new cache.
}
})
}
}
