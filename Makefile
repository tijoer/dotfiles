# THIS_DIR := $(dir $(abspath $(firstword $(MAKEFILE_LIST))))
# #HOMEFILES := $(shell ls -A home)
# #DOTFILES := $(addprefix $(HOME)/,$(HOMEFILES))

.DEFAULT_GOAL := help
.PHONY: help deb-packages

init:
# ifneq ($(shell id -u), 0)
# 	@echo "You must be root to perform this action."
# else
# 	@echo "TODO: The action when the user is root here..."
# 	apt update
# endif

# btop: 
# 	{ \
# 	echo "Downloading and installing btop..." ; \
# 	wget -qO btop.tbz https://github.com/aristocratos/btop/releases/latest/download/btop-armv7l-linux-musleabihf.tbz ; \
# 	sudo tar -xvf btop.tbz -C /usr/local/bin --strip-components=3 ./btop/bin/btop ; \
# 	rm btop.tbz ; \
# 	}


install-devcontainer: ## 🌟 Optimized installation for Devcontainers
	@echo "Installing in a Devcontainer..."
	$(MAKE) init
	$(MAKE) deb-packages
	$(MAKE) update-locale
	# $(MAKE) btop

update-locale: ## Updates the locale to english utf-8. Usefill in containers.
	apt-get install -y locales locales-all
	locale-gen en_US.UTF-8

deb-packages:
	grep "^[^#;]" .debian-packages.conf | xargs sudo apt -y install

help: ## 🚀 Displays this help message
	@printf "🌟 Dotfiles Makefile 🌟 \n"
	@printf "\n"
	@grep '^[[:alnum:]_-]*:.* ##' $(MAKEFILE_LIST) \
	| sort | awk 'BEGIN {FS=":.* ## "}; {printf "%-25s %s\n", $$1, $$2};'