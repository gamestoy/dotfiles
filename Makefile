SHELL = /bin/bash
DOTFILES_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
PATH := $(DOTFILES_DIR)/bin:$(PATH)
CONFIG_BASE_PATH := ~/test2
HOMEBREW_PREFIX := $(shell bin/is-supported bin/is-arm64 /opt/homebrew /usr/local)
export XDG_CONFIG_HOME = $(HOME)/.config
export STOW_DIR = $(DOTFILES_DIR)
export ACCEPT_EULA=Y

all: core packages config-files

core: brew git

brew:
	is-executable brew || curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash

git: brew
	brew install git git-extras

brew-packages: brew
	brew bundle --file=$(DOTFILES_DIR)/install/homebrew/Brewfile || true

packages: brew-packages cask-apps npm-packages

cask-apps: brew
	brew bundle --file=$(DOTFILES_DIR)/install/homebrew/Caskfile || true

npm-packages:
	npm install -g $(shell cat install/npm/npm-packages)

config-files:
	cp -r $(DOTFILES_DIR)/config/zsh $(CONFIG_BASE_PATH)
	cp -r $(DOTFILES_DIR)/config/git/. $(CONFIG_BASE_PATH)
	mkdir $(CONFIG_BASE_PATH)/.config
	cp -r $(DOTFILES_DIR)/config/starship/. $(CONFIG_BASE_PATH)/.config
	cp -r $(DOTFILES_DIR)/config/kitty $(CONFIG_BASE_PATH)/.config

