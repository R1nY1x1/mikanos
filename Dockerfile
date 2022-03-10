FROM ghcr.io/sarisia/mikanos:vnc
ARG USERNAME=vscode
RUN sudo apt update
RUN sudo apt install -y vim
RUN git clone https://github.com/uchan-nos/mikanos.git /home/${USERNAME}/mikanos
RUN mkdir /home/${USERNAME}/src
WORKDIR /home/${USERNAME}/src
ADD ./src /home/${USERNAME}/src
ENV QEMU_OPTS="-vnc :0"
ENV PATH+=/home/${USERNAME}/osbook/devenv
RUN ln -s /home/${USERNAME}/src/MikanLoaderPkg /home/${USERNAME}/edk2/
RUN cp -r /home/${USERNAME}/src/Conf /home/${USERNAME}/edk2/
RUN cp /home/${USERNAME}/src/.bashrc /home/${USERNAME}/.bashrc
