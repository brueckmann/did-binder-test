# run.R

# this works also when you are using binder's RStudio
# https://mybinder.org/v2/gh/brueckmann/did-binder-test/HEAD?urlpath=rstudio

source("02_rscripts/install.R") 
source("02_rscripts/00_get_data.R")
source("02_rscripts/01_data_cleaning.R")
source("02_rscripts/02_descriptives.R")
source("02_rscripts/03_modeling.R")

quarto::quarto_render("03_output/Comparison.qmd", quiet = TRUE)
quarto::quarto_render("03_output/BasicDiffinDiffs.qmd", quiet = TRUE)

source("02_rscripts/98_write_sessioninfo.R")
