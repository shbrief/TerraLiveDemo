FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio/TerraLiveDemo

COPY --chown=rstudio:rstudio . /home/rstudio/TerraLiveDemo
RUN chown -R rstudio:rstudio /home