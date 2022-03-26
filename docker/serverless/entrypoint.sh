#!/bin/bash

# 秘密情報をビルドに含めない
# serverless framework にAWSアカウントを紐付ける
serverless config credentials \
    --provider aws \
    --key $AWS_ACCESS_KEY_ID \
    --secret $AWS_SECRET_ACCESS_KEY &

# 依存パッケージのインストール と exitしないためにベースイメージの`CMD`実行
npm install && pip install -r requirements.txt && python
