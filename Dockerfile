FROM rocker/r-ver:4.6.1
LABEL maintainer="brueckmann"
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends git libcurl4-openssl-dev libssl-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN R -e "install.packages(c('cli', 'curl', 'glue', 'lifecycle', 'pak', 'pillar', 'remotes', 'rlang', 'rstudioapi', 'vctrs'), repos='https://cloud.r-project.org/')"
