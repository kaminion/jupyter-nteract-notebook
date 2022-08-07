FROM jupyter/base-notebook

EXPOSE 8888

USER root
WORKDIR /tmp
COPY extension ./extension
RUN pip install nteract_on_jupyter
RUN pip install ./extension
RUN jupyter server extension enable nteract_on_jupyter

WORKDIR /home/jovyan