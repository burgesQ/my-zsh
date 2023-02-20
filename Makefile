NAME = my-zsh

FILES	= \
	zshrc \
	zshenv

HISTORY	= zsh_history

INSTALL_DEPS	= \
	$(addprefix $(HOME)/,$(addprefix .,${FILES})) \
	$(addprefix $(HOME)/,.zsh)

# TODO: if install history set, add history to target
# TODO: backup
# TODO: toggle between install & ln
# INSTALL_CMD	= install --mode=0644 -D $< $@
# LN_CMD			= mkdir -p $(shell dirname $@) ; ln -rfs $< $@

.PHONY: install
install: ${INSTALL_DEPS} ## Install dependencies to the system
	@echo TODO
	@echo $(INSTALL_DEPS)

$(HOME)/.%: %
	install --mode=0644 -D $< $@

$(HOME)/.zsh: zsh
	cp -rf $< $@
