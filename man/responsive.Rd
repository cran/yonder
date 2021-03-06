% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/flex.R
\name{responsive}
\alias{responsive}
\title{Understanding responsive arguments}
\description{
A responsive argument may be a single value or a named list. Possible names
includes \code{default} or \code{xs}, \code{sm}, \code{md}, \code{lg}, and \code{xl}. Specifying a single
unnamed value is equivalent to specifying \code{default} or \code{xs}. The possible
values will be described in the specific help page. Most responsive arguments
will default to \code{NULL} in which case no corresponding style is applied.

Responsive arguments allow you to apply styles to tag elements based on the
size of the viewport. This is important when developing applications for both
web and mobile.  Specifying a single unnamed value the style will be applied
for all viewport sizes. Use the names above to apply a style for viewports of
that size and larger. For example, specifying \code{list(default = x, md = y)}
will apply \code{x} on extra small and small viewports, but for medium, large, and
extra large viewports \code{y} is applied.

Styles for larger viewports take precedence. See below for details about each
breakpoint.

\strong{extra small}

How: pass a single value, use name \code{xs}, or use name \code{default}.

When: the style is always applied, unless supplanted by a style for any other
viewport size.

\strong{small}

How: use name \code{sm}.

When: the style is applied when the viewport is at least 576px wide, think
landscape phones.

\strong{medium}

How: use name \code{md}.

When: the style is applied when the viewport is at least 768px wide, think
tablets.

\strong{large}

How: use name \code{lg}.

When: the style is applied when the viewport is at least 992px wide, think
laptop or smaller desktops.

\strong{extra large}

How: use name \code{xl}.

When: the style is applied when the viewport is at least 1200px wide, think
large desktops.
}
\seealso{
Other layout functions: 
\code{\link{column}()},
\code{\link{fieldset}()},
\code{\link{flex}()},
\code{\link{navbar}()},
\code{\link{webpage}()}
}
\concept{layout functions}
