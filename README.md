# The best dotfiles setup

## dotfile start

```zsh
# ホームディレクトリ内で実施すること(dotfilesはホームディレクトリに設置する)
$git clone [project name]

$make
```

## makeを使う理由

makeを使うのは環境依存性の排除を重視しているため。
dotfilesのセットアップ時は、環境が整っていない状態のためなるべくツールの
依存性を少なくしなければいけない。
makeであればたいていのUnixライクシステムで利用できる。
環境依存性を少なくするベストプラクティスは Bourne Shell，make を使うこと。
## setup.sh desc

```shell
for f in .??* # dotfileを列挙
```

[参考URL](https://takuzoo3868.hatenablog.com/entry/2017/10/29/033252)

## itermをよくするツールを記載しておく

```$ brew install peco```
```$ brew install jq```
