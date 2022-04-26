# Dotfiles

## Description

This is a repository with my configuration files, those are verified on Linux / MacOS.

Author: naohito-T
Date: 2022/04/26

## Setup

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

`$ brew install peco`
`$ brew install jq`

## pwgen(パスワード生成)

[参考URL](https://qiita.com/icedpasta1832/items/57d0d9805f04b6e79875)

`$ brew install pwgen`

- 16文字のランダムパスワードを1つ生成する
`$ pwgen -s 16 1`

- 32文字の記号ありランダムパスワードを4つ生成する
`$ pwgen -s -y 32 4`
