FROM debian:latest
RUN apt update && apt upgrade -y
RUN apt install git -y
RUN pip3 install -U pip
RUN cd /
RUN git clone https://github.com/iniridwanul/Ridogram
RUN cd Ridogram
WORKDIR /Ridogram
RUN pip3 install -U -requirements.txt
CMD python3 ridogram.py
