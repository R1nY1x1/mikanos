FROM ghcr.io/sarisia/mikanos:vnc
ARG USERNAME=vscode
RUN sudo apt update
RUN sudo apt install -y vim
RUN git clone https://github.com/uchan-nos/mikanos.git /home/${USERNAME}/mikanos
ENV QEMU_OPTS="-vnc :0"
RUN mkdir /home/${USERNAME}/src
WORKDIR /home/${USERNAME}/src
ADD ./src /home/${USERNAME}/src
