### rbenv
default["rbenv"]["version"] = "2.0.0-p353"

### nginx
default["nginx"]["port"]     = "80"
default["nginx"]["upstream"] = "unicorn"

### rails
default["rails"]["server"]["socket"] = "unix:/tmp/unicorn.sock"

### vim
default["vim"]["install_method"]    = "source"
default["vim"]["source"]["version"] = "7.4"
default['vim']['source']['configuration'] <<= " --enable-luainterp=yes --with-lua-prefix=/usr"
default['vim']['source']['dependencies'] = default['vim']['source']['dependencies'].concat(%w{lua lua-devel})

default['vim']['neobundle']['exec']  = "yes"
default['vim']['neobundle']['repo']  = "https://github.com/Shougo/neobundle.vim"
default['vim']['vimproc']['compile'] = "yes"

### git
default['git']['prefix']  = "/usr/local"
default['git']['version'] = "1.8.2.1"

### zsh
default['zsh']['chsh'] = "yes"
default['zsh']['user'] = "vagrant"

### homesick
default['homesick']['user']   = "vagrant"
default['homesick']['repo']   = "https://github.com/FumihikoSHIROYAMA/dotfiles"
default['homesick']['castle'] = "dotfiles"
