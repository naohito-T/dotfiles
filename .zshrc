# alias configure

alias ll='ls -laG'
alias cdiff='colordiff'

# PATH
export PATH=/usr/local/opt/postgresql@12/bin:$PATH
# Vue CLI
export PATH=/Users/tanakanaohitoshi/.anyenv/envs/nodenv/versions/14.4.0/bin:$PATH
# Android Studio
export ANDROID_SDK=/Users/tanakanaohitoshi/Library/Android/sdk
# Android Platform-toolsexport
PATH=/Users/username/Library/Android/sdk/platform-tools:$PATH
# rdenv
export PATH="$HOME/.rbenv/bin:$PATH"

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

# anyenv

eval "$(anyenv init -)"
# end

# rdenv
eval "$(rbenv init - zsh)"
# end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tanakanaohitoshi/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tanakanaohitoshi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tanakanaohitoshi/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tanakanaohitoshi/google-cloud-sdk/completion.zsh.inc'; fi
