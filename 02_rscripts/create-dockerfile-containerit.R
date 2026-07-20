# install.packages("remotes")
remotes::install_github("o2r-project/containerit")
suppressPackageStartupMessages(library("containerit"))
my_dockerfile <- containerit::dockerfile(from = utils::sessionInfo())

print(my_dockerfile)



# create Dockerfile representation
dockerfile_object <- dockerfile()