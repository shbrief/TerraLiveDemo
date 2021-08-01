## Dockerfile for TerraLiveDemo
## 96 required packages should be installed using BiocManager.

FROM us.gcr.io/broad-dsp-gcr-public/terra-jupyter-bioconductor:2.0.0
	
RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask=FALSE)"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"