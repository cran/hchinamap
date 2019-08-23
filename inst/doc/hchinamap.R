## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE, include=TRUE--------------------------------------------
#  # From CRAN
#  install.packages('hchinamap', build_vignettes = TRUE)
#  # From  GitHub
#  devtools::install_github('czxa/hchinamap', build_vignettes = TRUE)
#  # or use git
#  devtools::install_git("https://github.com/czxa/hchinamap.git", build_vignettes = TRUE)

## ------------------------------------------------------------------------
dir <- tempdir()
download.file('https://czxb.github.io/br/chinadf.rda', file.path(dir, 'chinadf.rda'))
load(file.path(dir, 'chinadf.rda'), verbose = TRUE)

## ----echo=TRUE-----------------------------------------------------------
library(dplyr)
library(magrittr)
library(hchinamap)
china <- chinadf %>% 
  dplyr::filter(region == "China")
hchinamap(name = china$name, value = china$value,
           width = "100%", height = "400px",
           title = "Map of China", region = "China")

## ----echo=TRUE-----------------------------------------------------------
china <- chinadf %>%
  dplyr::filter(region == "China")
hchinamap(name = china$name, value = china$value,
          region = "China",
           width = "100%", height = "400px",
           title = "Map of China",
           minColor = "#f1eef6",
           maxColor = "#980043")

## ----echo=TRUE-----------------------------------------------------------
anhui <- chinadf %>%
  dplyr::filter(region == "Anhui")
hchinamap(name = anhui$name, value = anhui$value,
           width = "100%", height = "500px",
           title = "Map of Anhui", region = "Anhui")

## ----echo=TRUE-----------------------------------------------------------
gd <- chinadf %>%
  dplyr::filter(region == "Guangdong")
hchinamap(name = gd$name, value = gd$value,
           width = "100%", height = "400px",
           title = "Map of Guangdong", region = "Guangdong")

## ----echo=TRUE-----------------------------------------------------------
hlj <- chinadf %>%
  dplyr::filter(region == "Heilongjiang")
hchinamap(name = hlj$name, value = hlj$value,
           width = "100%", height = "400px",
           title = "Map of Heilongjiang", region = "Heilongjiang")

## ----echo=TRUE-----------------------------------------------------------
sx <- chinadf %>%
  dplyr::filter(region == "Shaanxi")
hchinamap(name = sx$name, value = sx$value,
           width = "100%", height = "400px",
           title = "Map of Shaanxi", region = "Shaanxi",
           theme = "darkunica",
           titleColor = "white")

## ----eval=FALSE, include=TRUE--------------------------------------------
#  dir <- system.file("examples", "hchinamap", package = "hchinamap")
#  setwd(dir)
#  shiny::shinyAppDir(".")

