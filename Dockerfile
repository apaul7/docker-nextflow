FROM continuumio/miniconda3:22.11.1
MAINTAINER Alexander Paul <alex.paul@.wustl.edu>

RUN apt-get update && apt-get install -y \
  build-essential \
  git \
  libz-dev \
  tabix \
  vim

RUN conda update -n base -c defaults conda
RUN conda install -c bioconda \
  nextflow==23.10.1

WORKDIR /
