FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git python3-pip ffmpeg -y

RUN mkdir /LISA-KOREA/
WORKDIR /LISA-KOREA/
COPY . /LISA-KOREA/

RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt

CMD python3 main.py
