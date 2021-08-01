## Dockerfile for TerraLiveDemo
## 96 required packages should be installed using BiocManager.

FROM us.gcr.io/anvil-gcr-public/anvil-rstudio-bioconductor:3.13.2	
	
RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask=FALSE)"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"