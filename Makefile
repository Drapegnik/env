install:
	brew bundle

link-dots:
	ln -s -f $(shell pwd)/.zshrc ~/.zshrc
	ln -s -f $(shell pwd)/.gitignore ~/.gitignore
	ln -s -f $(shell pwd)/.gitconfig ~/.gitconfig
	ln -s -f $(shell pwd)/.gitexcludes ~/.gitexcludes
	ln -s -f $(shell pwd)/.npmrc ~/.npmrc
