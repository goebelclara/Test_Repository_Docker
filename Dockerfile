FROM mambaorg/micromamba:1.0.0 AS main

WORKDIR /opt/app

# chown changes owner from root owner (1000) to the first user inside the env (100)
COPY --chown=1000:100 env.yaml ./
RUN micromamba install -y --file env.yaml && \
    micromamba clean --all --yes

ENV PYTHONPATH "/opt/app"
COPY .jupyter/jupyter_lab_config.py /opt/conda/etc/jupyter/
COPY .jupyter/overrides.json /opt/conda/share/jupyter/lab/settings/

EXPOSE 8888 8050

###############################################################################
# test
###############################################################################

FROM main AS test

# activate mamba (otherwise python will not be found)
ARG MAMBA_DOCKERFILE_ACTIVATE=1

COPY src src
COPY tests tests

RUN py.test tests