FROM rust:1.67-bullseye

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
	unzip \
	locales \
	locales-all

##RUN sed -i 's/^# *\(en_US.UTF-8\|de_DE.UTF-8\)/\1/' /etc/locale.gen && locale-gen
#RUN sudo locale-gen de_DE.UTF-8
#ENV LANG de_DE
#ENV LANGUAGE de_DE
##ENV LC_ALL de_DE.UTF-8    

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# These two layers are needed for the Neovim LSP plugins. We 
RUN pip3 install pynvim
RUN npm i -g neovim

EXPOSE 22 8080 8081 8082 8083 8084 8085


