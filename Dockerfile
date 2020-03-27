FROM ubuntu:xenial

EXPOSE 22

RUN apt-get update
RUN apt-get install -y python

RUN apt install -y openjdk-8-jre-headless

RUN wget https://downloads.lightbend.com/scala/2.13.1/scala-2.13.1.deb
RUN dpkg -i scala-2.13.1.deb

RUN wget mirrors.ibiblio.org/apache/spark/spark-2.4.5/spark-2.4.5-bin-hadoop2.7.tgz
RUN tar xvf spark-2.4.5-bin-hadoop2.7.tgz
RUN mv spark-2.4.5-bin-hadoop2.7 /usr/local/spark
RUN echo 'export PATH=$PATH:/usr/local/spark/bin' >> ~/.bashrc
