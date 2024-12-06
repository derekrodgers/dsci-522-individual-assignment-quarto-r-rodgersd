FROM rocker/verse:4.4.1

RUN install2.r --error --skipinstalled --ncpus -1 \
    docopt \
    gridExtra \
    && rm -rf /tmp/downloaded_packages

RUN tlmgr install \
    unicode-math \
    booktabs \
    float \
    caption