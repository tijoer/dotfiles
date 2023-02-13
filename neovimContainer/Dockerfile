FROM rust:1.67-bullseye

#ENV LANG de_DE.UTF-8  
#ENV LANGUAGE de_DE:de  
#ENV LC_ALL en_US.UTF-8
##RUN sed -i 's/^# *\(en_US.UTF-8\|de_DE.UTF-8\)/\1/' /etc/locale.gen && \
#        locale-gen
ENV LANG de_DE.utf8

RUN apt update \
	&& apt install -y \
	openssh-server \
	sudo \
	curl \
	tree \
	git \
	xclip \
	python3 \
	python3-pip \
	nodejs \
	npm \
	ninja-build \
	gettext \
	libtool \
	libtool-bin \
	autoconf \
	automake \
	cmake \
	g++ \
	pkg-config \
	zip \
	unzip

RUN pip3 install pynvim
RUN npm i -g neovim


EXPOSE 22 8080 8081 8082 8083 8084 8085

#RUN wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
#RUN dpkg -i nvim-linux64.deb

# # Create a user “sshuser” and group “sshgroup”
# RUN groupadd sshgroup && useradd -ms /bin/bash -g sshgroup sshuser

# # Create sshuser directory in home
# RUN mkdir -p /home/sshuser/.ssh

# # Copy the ssh public key in the authorized_keys file. The idkey.pub below is a public key file you get from ssh-keygen. They are under ~/.ssh directory by default.
# #COPY idkey.pub /home/sshuser/.ssh/authorized_keys

# # change ownership of the key file. 
# #RUN chown sshuser:sshgroup /home/sshuser/.ssh/authorized_keys && chmod 600 /home/sshuser/.ssh/authorized_keys

# # Start SSH service
# RUN service ssh start

# #RUN nvim --headless +PlugInstall +qallnvim --headless +PlugInstall +qall

# # Expose docker port 22
# EXPOSE 22 8080 8081 8082 8083 8084 8085
# CMD ["/usr/sbin/sshd","-D"]

# CMD Instruction
#CMD ["echo", "Hello world"] # Exec Form
# ENTRYPOINT Instruction
#ENTRYPOINT ["echo", "Hello world"] # Exec Form
#ENTRYPOINT echo "Hello world"      # Shell Form


#CMD echo "mkdir ~/.ssh"      # Shell Form

