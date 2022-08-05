FROM jupyter/base-notebook

EXPOSE 8888

COPY extension /srv/jupyterhub/
RUN conda install -c nteract_on_jupyter
RUN conda install ./extension
RUN jupyter server extension enable nteract_on_jupyter