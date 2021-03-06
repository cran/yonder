% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/navbar.R
\name{navbar}
\alias{navbar}
\title{Navigation bar}
\usage{
navbar(..., brand = NULL, collapse = NULL)
}
\arguments{
\item{...}{A tab toggle, inline forms, or text to add to include as part of
the navigation bar.}

\item{brand}{A tag element or text placed on the left end of the navbar,
defaults to \code{NULL}, in which case nothing is added.}

\item{collapse}{One of \code{"sm"}, \code{"md"}, \code{"lg"}, \code{"xl"}, or \code{NULL} specifying
the breakpoint at which the navbar collaspes, defaults to \code{NULL}, in which
case the navbar is always expanded.}
}
\description{
Add a navigation bar to your application with \code{navbar()}. Navigation bars may
include a tab toggle (useful for multi-page applications), inline forms
(perhaps a search feature or login item), or character strings to add simple
text. Navbars are responsive and will collapse on small screens, think mobile
device. A button is automatically added to toggle between the collapsed and
expanded states.
}
\examples{

### Navbar with tabs

div(
  navbar(
    brand = "Navbar",
    navInput(
      id = "tabs",
      choices = c("Home", "About", "Our process")
    ) \%>\%
      margin(right = "auto"),
    formInput(
      inline = TRUE,
      id = "navForm",
      textInput(
        type = "search",
        id = "site_search",
        placeholder = "Search"
      ) \%>\%
        margin(right = c(sm = 2)),
      formSubmit(
        label = "Search",
        value = "search"
      ) \%>\%
        background("amber")
    )
  ) \%>\%
    background("teal"),
  container(
    navContent(
      navPane(
        h3("Home")
      ),
      navPane(
        h3("About")
      ),
      navPane(
        h3("The process")
      )
    )
  )
)

}
\seealso{
Other layout functions: 
\code{\link{column}()},
\code{\link{fieldset}()},
\code{\link{flex}()},
\code{\link{responsive}},
\code{\link{webpage}()}
}
\concept{layout functions}
