FROM continuumio/anaconda3
RUN conda install jupyter
RUN conda install jupyterlab
RUN conda install pandas
RUN conda install matplotlib

RUN apt-get update && apt-get install -y \
    fonts-ipaexfont-gothic \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /opt/notebooks
WORKDIR /opt/notebooks

RUN mkdir prog
RUN cd prog

WORKDIR /opt/notebooks/prog

CMD ["/bin/bash", "-c", "jupyter lab --ip='*' --NotebookApp.token='' --NotebookApp.password='' --port=8888 --no-browser --allow-root"]
