LNFF=

all: c-tmux c-zshrc c-nvim

all-force: LNFF=-f
all-force: all

c-tmux: tmux.conf
	-ln -rs $(LNFF) $< $${HOME}/.$<

define ZSHRC_BODY
oc_user="VPN-USERNAME"
oc_pwd='VPN-PASSWORD'
oc_gateway="VPN-GATEWAY"

endef

export ZSHRC_BODY
c-zshrc: zsh_sc
	mv $${HOME}/.zshrc $${HOME}/.zshrc_$(shell date +%s)
	@echo "$$ZSHRC_BODY" > $${HOME}/.zshrc
	@echo "source $(realpath $<)" >> $${HOME}/.zshrc

	
c-nvim: nvim
	mkdir -p $${HOME}/.config/
	-ln -rs $< $${HOME}/.config/
