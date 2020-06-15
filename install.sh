#!/bin/bash
sudo apt update -y
sudo apt install tmux

#install tmux plugins manager : tpm
mkdir ~/.tmux/plugins/ -p
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#on home directory :; ~/
#install vim editor
sudo apt install vim

echo \
"
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com/user/plugin'
# set -g @plugin 'git@bitbucket.com/user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run -b '~/.tmux/plugins/tpm/tpm'
" \
> ~/.tmux.conf

tmux source ~/.tmux.conf

echo "
----------------------------------------------------------------------
install tpm complete
> next install nord-tmux theme
----------------------------------------------------------------------
"

mkdir -p ~/.tmux/themes/
git clone https://github.com/arcticicestudio/nord-tmux.git ~/.tmux/themes/nord-tmux/

echo "run-shell "~/.tmux/themes/nord-tmux/nord.tmux"" >> ~/.tmux.conf

cat finish
