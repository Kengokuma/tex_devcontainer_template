FROM mcr.microsoft.com/devcontainers/base:debian-12

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        latexmk \
        texlive-lang-japanese \
        texlive-latex-extra \
        texlive-luatex \
        texlive-fonts-recommended \
        texlive-extra-utils \
        fonts-noto-cjk \
        ghostscript \
        make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
