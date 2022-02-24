##########################
##  zsh lib load script ##
##########################
ZSH_LIB_HOME="${HOME}/dotfiles/lib/zsh"

function loadLib() {
    lib=${1:?"You have to specify a library file"}
    if [ -f "${lib}" ]; then
        source "${lib}"
    fi
}
# alias load
loadLib $ZSH_LIB_HOME/alias/alias.sh
# function load
loadLib $ZSH_LIB_HOME/func/function.sh
# path load
loadLib $ZSH_LIB_HOME/path/path.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/tanakanaohitoshi/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/tanakanaohitoshi/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/tanakanaohitoshi/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/tanakanaohitoshi/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# <<< git prompt initialize >>>
# git-promptの読み込み
source ~/.zsh/git-prompt.sh

# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# プロンプトの表示設定(好きなようにカスタマイズ可)
setopt PROMPT_SUBST
PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '

# <<< end >>>

# ---------------------------------------------------------------#
#  					  Anyenv Management                          #
# ---------------------------------------------------------------#

# @memo anyenvはnodevnやpyenvなどをanyenvのコマンドから統一できるツール

# anyenv
eval "$(anyenv init -)"

# pyenvを追加する(これを実行しないとsystemに乗っ取られる)
export PATH=$(pyenv root)/shims:$PATH

# rdenv
eval "$(rbenv init - zsh)"
# end

# ---------------------------------------------------------------#
#    					  Env Management                         #
# ---------------------------------------------------------------#

# direnv
eval "$(direnv hook zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tanakanaohitoshi/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tanakanaohitoshi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tanakanaohitoshi/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tanakanaohitoshi/google-cloud-sdk/completion.zsh.inc'; fi
