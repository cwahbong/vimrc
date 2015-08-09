update:
	git pull --rebase
	vim -c BundleUpdate -c qa

BUNDLE_PATH = ./bundle

install:
	ln --backup=numbered -n -s -r . $(HOME)/.vim
	mkdir -p $(BUNDLE_PATH)
	@if [ ! -d "$(BUNDLE_PATH)/vundle" ]; then\
		git clone https://github.com/gmarik/vundle.git;\
	else\
		echo "Vundle clready cloned.";\
	fi
	vim -c BundleInstall -c qa

Makefile: ; # Do not remake makefile.

.PHONY: all update install clean
