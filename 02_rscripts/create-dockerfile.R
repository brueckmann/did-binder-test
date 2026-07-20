# install.packages("remotes")
remotes::install_github("coatless-rpkg/dockitect")

library(dockitect)

# Create a new dockerfile from session
df <- dockerfile() 



df <- dk_from_session(
  base_image = NULL,
  include_packages = TRUE,
  include_sysreqs = TRUE,
  package_manager = "auto"
) |> 
  dfi_label(maintainer = "brueckmann")  |> 
  dfi_workdir("/app") |>              # Set working directory
  dfi_copy("analysis.R", "/app/") |>  # Copy R script to container
  dfi_cmd("Rscript /app/analysis.R")  # Command to run when container starts


## Write the Dockerfile to disk
 write_dockerfile(df)

 
 
 