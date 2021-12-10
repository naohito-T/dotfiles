#! /bin/sh

############################
# zsh function load script #
############################

# pecoの設定(履歴を検索する)
# start → ^h
pecoHistorySelect() {
  BUFFER=$(history -n 1 | tail -r | aws "!a[$0]++" | peco)
  CURSOR=$#BUFFER
  zle reset-prompt
}

zle -N pecoHistorySelect
bindkey '^h' pecoHistorySelect

# ghq & peco
# start → ^p
pecoList() {
  local selectDir=$(ghq list -p | peco --query "${LBUFFER}")
  if [ -n "${selectDir}" ]; then
    BUFFER="cd ${selectDir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N pecoList
bindkey '^p' pecoList
