FROM rust:1.67-bullseye

##RUN sed -i 's/^# *\(en_US.UTF-8\|de_DE.UTF-8\)/\1/' /etc/locale.gen && \
#        locale-gen
ENV LANG de_DE.utf8

RUN apt update \
	&& apt install -y \
	tmux \
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

# These two layers are needed for the Neovim LSP plugins. We 
RUN pip3 install pynvim
RUN npm i -g neovim

EXPOSE 22 8080 8081 8082 8083 8084 8085


