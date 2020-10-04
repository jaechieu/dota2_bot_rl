FROM continuumio/miniconda3:4.8.2

RUN apt-get update && apt-get install vim -y && apt install build-essential -y

WORKDIR /app
COPY conda-environment.yml environment.yml
RUN conda env create -f environment.yml

# Refresh conda shell for installation
SHELL ["conda", "run", "-n", "dota2_engine_env", "/bin/bash", "-c"]

RUN pip install gym

COPY main.py app.py

ENTRYPOINT ["/bin/bash"]
