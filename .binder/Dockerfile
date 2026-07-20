FROM rocker/binder:4.5.2
LABEL maintainer='brueckmann'
COPY --chown=${NB_USER} . ${HOME}
USER ${NB_USER}



RUN wget https://github.com/brueckmann/did-binder-test/raw/main/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2025-11-03/')); devtools::install_deps()"

RUN rm DESCRIPTION.1; exit 0
