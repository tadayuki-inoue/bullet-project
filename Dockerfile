FROM python:3
USER root

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

RUN apt-get install -y vim less
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

# 機械学習系のライブラリ
RUN pip install numpy
RUN pip install pandas
RUN pip install matplotlib
RUN pip install networkx
RUN pip install pyyaml
RUN pip install xlsxwriter
RUN pip install tornado
