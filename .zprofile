# bash_profile

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

### PATH ###
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
export ANDROID_SDK=/Users/tanakanaohitoshi/Library/Android/sdk
export PATH=/Users/tanakanaohitoshi/Library/Android/sdk/platform-tools:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# eval "$(anyenv init -)"
