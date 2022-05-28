export PATH=/opt/homebrew/bin:$PATH
# REF: https://www.youtube.com/watch?v=SaqdW8kXjHs
# (Manual) Export adb installed by android studio 
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools/
# REF: https://mac.install.guide/ruby/13.html
# For ruby, you should not use the system ruby.
# You can install a new interpreter by homebrew 
# or version managers like rbenv, rvm, chruby, or frum.
# In this dotfile, I assume it's installed through homebrew.
export PATH=/opt/homebrew/opt/ruby/bin:$PATH
export PATH=`/opt/homebrew/opt/ruby/bin/gem environment gemdir`/bin:$PATH
export EDITOR=vim

## [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions#configuration)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan" # default is fg=8, which is 8th color on terminal palette.
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
# export ZSH_AUTOSUGGEST_USE_ASYNC=1

## [jonmosco/kube-ps1](https://github.com/jonmosco/kube-ps1#customization)
export KUBE_PS1_SYMBOL_USE_IMG=true
export KUBE_PS1_SYMBOL_COLOR="yellow"

# os, preinstalled
alias t="touch"
alias e="exit"

# util
# alias clip="xclip -sel clip"
# alias v="xclip -o -sel clip"
alias th="trash"

# dev
alias g_="git commit -m"
alias yr="yarn run"
alias p="python"
alias p3="python3"
alias pe="pyenv"
alias pp="pipenv"
alias n="node"
alias tf="terraform"
alias kc="kubectx"
alias kn="kubens"
alias mk="minikube"
alias c="cargo"
alias cr="cargo run"
alias cb="cargo build"
alias ci="cargo install"
alias ct="cargo test"
alias cf="cargo fmt"
# alias microk8sKubeConfig="microk8s kubectl config view --raw > $HOME/.microk8s/kubeconfig && echo '~/.microk8s/kubeconfig'"
alias k3dCc="k3d cluster create"
alias k3dCcD="k3d cluster create default"
alias k3dCd="k3d cluster delete"
alias k3dCdD="k3d cluster delete default"
alias k3dKubeconfigW="k3d kubeconfig write"
alias k3dKubeconfigWD="k3d kubeconfig write default"
alias f="flutter"
alias fp="flutter pub"
alias fpa="flutter pub add"
alias fpad="flutter pub add --dev"
alias fprm="flutter pub remove"
alias fpg="flutter pub get"
alias fpu="flutter pub upgrade"
alias fpr="flutter pub run"
alias fpt="flutter pub test"
alias fph="flutter pub --help"
alias ft="flutter test"
alias fu="flutter upgrade"
alias fd="flutter devices"
alias fr="flutter run"
alias fb="flutter build"

## env
alias l='colorls --almost-all --sort-dirs --git-status'
alias lg='colorls --almost-all --sort-dirs --git-status | grep'
alias ll="colorls -l --almost-all --sort-dirs --git-status"
alias llg="colorls -l --almost-all --sort-dirs --git-status | grep"
alias lt="colorls --tree --sort-dirs --git-status" # this does not show hidde files
alias pathpp="tr ':' '\n' <<< $PATH"

# source
source $(dirname $(gem which colorls))/tab_complete.sh
