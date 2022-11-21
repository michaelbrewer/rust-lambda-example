FROM rust

RUN apt update
RUN apt install python3-pip -y
RUN pip3 install --upgrade pip
RUN pip3 install cargo-lambda
