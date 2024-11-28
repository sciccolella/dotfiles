# Install
```bash
git clone --recurse-submodules git@github.com:sciccolella/zshsc.git dotfiles
cd dotfiles; make
```

# Notes on `zshrc`
The `Makefile` will move the existing `.zshrc` to a `.zshrc_EPOCH` to avoid losing settings currently existing.
It will the produce a new `.zshrc` with following content:

```zsh
oc_user="VPN-USERNAME"
oc_pwd='VPN-PASSWORD'
oc_gateway="VPN-GATEWAY"

source path/to/zsh_sc
```

# Notes on `tmux.conf`
The `Makefile` will try to symlink `~/.tmux.conf` to the config file on the repo. 
If the file exists, the `ln` will fail and the `make` will continue running.
If you wish to force the symlink you can run `make all-force`

# Notes on `nvim` config
The `Makefile` will try to symlink `~/config/nvim` folder to the folder in this repo.
The folder is a submodule of a different [repo](https://github.com/sciccolella/nvim-config).
It is not currently possible to force this symlink. If `ln` fails you need to solve the issue manually with the old config.
