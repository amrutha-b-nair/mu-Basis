# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile

# FROM sagemath/sagemath:9.5

# RUN sage -pip install jupyterlab

# # Copy the contents of the repo in ${HOME}
# COPY --chown=sage:sage . ${HOME}

#FROM sagemathinc/cocalc:latest
FROM sagemath/sagemath-dev:latest
FROM sagemathinc/cocalc:latest
#FROM sagemath/sagemath-dev:latest

COPY --chown=sage:sage ./*.ipynb /home/sage/
WORKDIR "/home/sage/"
