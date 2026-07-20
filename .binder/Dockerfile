FROM rocker/binder:4.5.2
LABEL maintainer='brueckmann'

USER root

# Install system dependencies needed to build common R packages
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
      git wget ca-certificates \
      build-essential \
      libcurl4-openssl-dev \
      libssl-dev \
      libxml2-dev \
      libgit2-dev \
      libpng-dev \
      libjpeg-dev \
      libfreetype6-dev \
      libharfbuzz-dev \
      libfontconfig1-dev \
      zlib1g-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy repository into user's home and set ownership
COPY --chown=${NB_USER}:${NB_GID} . ${HOME}/project
WORKDIR ${HOME}/project

# Ensure run.sh is executable
RUN chmod +x ${HOME}/project/run.sh && \
    chmod -R u+rwX ${HOME}/project

# Switch to non-root binder user
USER ${NB_USER}

# Ensure R can access network for data download - binder images allow network by default.
# Run the pipeline as the non-root user
CMD ["bash", "run.sh"]
