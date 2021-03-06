% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/button.R, R/tooltip.R
\name{buttonInput}
\alias{buttonInput}
\alias{updateButtonInput}
\alias{linkInput}
\alias{updateLinkInput}
\alias{tooltip}
\title{Button and link inputs}
\usage{
buttonInput(id, label, ..., stretch = FALSE, download = FALSE, tooltip = NULL)

updateButtonInput(
  id,
  label = NULL,
  value = NULL,
  disable = NULL,
  enable = NULL,
  tooltip = NULL,
  session = getDefaultReactiveDomain()
)

linkInput(id, label, ..., stretch = FALSE, download = FALSE, tooltip = NULL)

updateLinkInput(
  id,
  label = NULL,
  value = NULL,
  enable = NULL,
  disable = NULL,
  tooltip = NULL,
  session = getDefaultReactiveDomain()
)

tooltip(..., placement = "top", fade = TRUE)
}
\arguments{
\item{id}{A character string specifying the id of the reactive input.}

\item{label}{A character string specifying the label text on the button or
link input.}

\item{...}{Additional named arguments passed as HTML attributes to the parent
element.}

\item{stretch}{One of \code{TRUE} or \code{FALSE} specifying stretched behaviour for
the button or link input, defaults to \code{FALSE}. If \code{TRUE}, the button or
link will receive clicks from its containing block element. For example, a
stretched button or link inside a \code{\link[=card]{card()}} would update whenever the user
clicked on the card.}

\item{download}{One of \code{TRUE} or \code{FALSE} specifying if the button or link
input is used to trigger a download, defaults to \code{FALSE}.}

\item{tooltip}{A call to \code{\link[=tooltip]{tooltip()}} specifying a tooltip for the button or
link input, defaults to \code{NULL}.}

\item{value}{A number specifying a new value for the button, defaults to
\code{NULL}.}

\item{disable}{if \code{TRUE} the button is disabled and will not react to clicks
from the user, default to \code{NULL}.}

\item{enable}{If \code{TRUE} the button is enabled and will react to clicks from
the user,  defaults to \code{NULL}.}

\item{session}{A reactive context, defaults to \code{\link[=getDefaultReactiveDomain]{getDefaultReactiveDomain()}}.}

\item{placement}{One of \code{"top"}, \code{"right"}, \code{"bottom"}, or \code{"left"}
specifying what side of the tag element the tooltip appears on.}

\item{fade}{One of \code{TRUE} or \code{FALSE} specifying if the tooltip fades in when
shown and fades out when hidden, defaults to \code{TRUE}.}
}
\description{
Button inputs are useful as triggers for reactive or observer expressions.
The reactive value of a button input begins as \code{NULL}, but subsequently is
the number of clicks.
}
\details{
\strong{Tooltips}

To remove a button or link input's tooltip pass an empty tooltip,
\code{tooltip()}, to \code{updateButtonInput()} or \code{updateLinkInput()}.
}
\examples{

### A simple button

buttonInput(
  id = "button1",
  label = "Simple"
)

# Alternatively, a button can fill the width of its parent element.

buttonInput(
  id = "button2",
  label = "Full-width",
  fill = TRUE  # <-
) \%>\%
  background("red")

# Use design utilities to further adjust the width of a button.

buttonInput(
  id = "button3",
  label = "Full and back again",
  fill = TRUE  # <-
) \%>\%
  background("red") \%>\%
  width("3/4")  # <-

### Possible colors

colors <- c(
  "red", "purple", "indigo", "blue", "cyan", "teal", "green",
  "yellow", "amber", "orange", "grey"
)

lapply(
  colors,
  function(color) {
    buttonInput(
      id = color,
      label = color
    ) \%>\%
      background(color) \%>\%
      margin(2)
  }
) \%>\%
  div() \%>\%
  display("flex") \%>\%
  flex(wrap = TRUE)

### Reactive links

div("Curabitur ", linkInput("link1", "vulputate"), " vestibulum lorem.")

### Stretched buttons and links

card(
  header = "Card with stretched button",
  p("Notice when you hover over the card, the button also detects ",
    "the hover."),
  buttonInput(
    id = "go",
    label = "Go go go",
    stretch = TRUE
  ) \%>\%
    background("blue")
) \%>\%
  width(20)

### Download button

buttonInput(
  download = TRUE,
  id = "download1",
  label = "Download",
  icon("download")
)

}
\seealso{
Other inputs: 
\code{\link{buttonGroupInput}()},
\code{\link{checkbarInput}()},
\code{\link{checkboxInput}()},
\code{\link{chipInput}()},
\code{\link{fileInput}()},
\code{\link{formInput}()},
\code{\link{listGroupInput}()},
\code{\link{menuInput}()},
\code{\link{navInput}()},
\code{\link{radioInput}()},
\code{\link{radiobarInput}()},
\code{\link{rangeInput}()},
\code{\link{selectInput}()},
\code{\link{textInput}()}
}
\concept{inputs}
