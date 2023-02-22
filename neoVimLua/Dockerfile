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

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh) -y
RUN echo "export PATH=/root/.local/bin:$PATH" >> ~/.zshenv

EXPOSE 22 8080 8081 8082 8083 8084 8085

WORKDIR /root
