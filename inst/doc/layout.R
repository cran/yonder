## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo=FALSE---------------------------------------------------
suppressPackageStartupMessages(library(yonder))

## ---- results="asis"-----------------------------------------------------
container(
  columns(
    column(
      width = 4,
      p("Sidebar panel")
    ),
    column(
      width = 8,
      p("Main panel")
    )
  )
)

## ---- result="asis"------------------------------------------------------
container(
  columns(
    column(
      p("Column 1")
    ),
    column(
      p("Column 2")
    ),
    column(
      p("Column 3")
    )
  )
)

## ---- result="asis"------------------------------------------------------
container(
  columns(
    column(
      width = 12,
      p("Main panel")
    ),
    column(
      width = c(xs = 12, sm = 4),
      p("Column 1")
    ),
    column(
      width = c(xs = 12, sm = 4),
      p("Column 2")
    ),
    column(
      width = c(xs = 12, sm = 4),
      p("Column 3")
    )
  )
)

