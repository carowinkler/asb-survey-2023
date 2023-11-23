
# clean environment

#rm(list = ls())


# load/install packages

list.of.packages <- c("foreign", "stats", "survival", "backports", "here", "data.table",
                      "scales", "wrswoR", "tibble", "psych", "ggExtra", "forcats",
                      "reshape", "reshape2", "gtools", "rstudioapi", "automap", "tmap",
                      "xtable", "texreg", "miscTools", "zoo", "maxLik", "remotes", "MASS", 
                      "spdep", "naniar", "data.table", "plyr", "numDeriv", "sandwich",
                      "randtoolbox", "ggmap", "shapefiles", "tidyr", "Rcpp", "dplyr", 
                      "caret", "car", "Matrix", "corrplot", "grid", "gridExtra", "lmtest",
                      "ggplot2", "fastDummies", "stringr", "bit64", "maptools", "sp", 
                      "raster", "rgeos", "tidyverse", "here", "lubridate", "qualtRics", 
                      "httr", "jsonlite", "mgsub", "missRanger", "XLConnect", "yaml", 
                      "readr", "labelled", "tidyverse", "qualtRics", "grid", "gridExtra", 
                      "data.table", "openxlsx", "psych", "kableExtra", "viridis", "skimr", 
                      "wesanderson", "ggpubr", "lubridate", "googlesheets4", "googledrive", 
                      "ggbreak", "sampleSelection", "gtsummary", "usethis", "sf", "tidyr", 
                      "tidygeocoder", "spatialEco", "fuzzyjoin", "zoo")

# Remove duplicates
list.of.packages <- unique(list.of.packages)

new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]

if(length(new.packages)) install.packages(new.packages)
lapply(list.of.packages, require, character.only = TRUE)

# Define user-specific paths
user_paths <- list(
  cwinkler = list(
    data_path = "C:/Users/cwinkler/POLYBOX/005_CASDAS/ASB/SURVEY",
    path = "C:/Users/cwinkler/POLYBOX/005_CASDAS/ASB/SURVEY/asb-survey-2023"
  )#,
  # Add other users here as needed
  # anotheruser = list(
  #   data_path = "path_for_anotheruser",
  #   data_path_TRB24 = "another_path_for_anotheruser",
  #   path = "yet_another_path_for_anotheruser"
  # )
)

# Get current user
current_user <- Sys.info()["user"]

# Check if the current user has paths defined
if(current_user %in% names(user_paths)) {
  data_path <- user_paths[[current_user]]$data_path
  path <- user_paths[[current_user]]$path
} else {
  stop("Paths not defined for current user!")
}

# Package installation and loading 
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
lapply(list.of.packages, require, character.only = TRUE)


