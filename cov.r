library(readr)

covs <- NULL

#cov <- read_csv("Downloads/")
files <- list.files("Downloads/fooc", pattern="*csv") 

for (f in files){
  file_path <- paste("Downloads/fooc", f, sep="/")
  f_cov <- read_csv(file_path)
  if (covs == NULL){
    covs <- read_csv(file_path)
  } else {
   covs <- rbind(covs, f_cov) 
  }
}
