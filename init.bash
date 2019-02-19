#!/usr/bin/env bash

# npmとして初期化
npm init -y

# サーバレス環境に必要なパッケージのインストール
npm install serverless

$(npm bin)/serverless plugin install --name=serverless-prune-plugi

# giboを使って.gitignoreを作成
if [[ -x gibo ]] ; then
  gibo dump node >> .gitignore
else
  echo 'gibo ha benri desu node install simasenka?'
fi

