FROM rocker/r2u:latest

RUN \
  apt update && apt install -y --no-install-suggests r-cran-rmarkdown r-cran-quarto

RUN \
  install2.r data.table

RUN wget https://quarto.org/download/latest/quarto-linux-amd64.deb
RUN dpkg -i quarto-linux-amd64.deb

CMD [ "bash" ]