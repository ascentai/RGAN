ROM continuumio/miniconda3
RUN groupadd --gid 1000 ascent
RUN useradd --home-dir /ascent --create-home --uid 1000 --gid 1000 ascent
COPY . /ascent
WORKDIR /ascent
RUN conda update -y -n base -c defaults conda
RUN conda env create -f environment.yml
RUN cat conda.bashrc >> /ascent/.bashrc
