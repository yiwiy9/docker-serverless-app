#!/bin/sh

# 秘密情報をビルドに含めない
# serverless framework にAWSアカウントを紐付ける
serverless config credentials \
    --provider aws \
    --key $AWS_ACCESS_KEY_ID \
    --secret $AWS_SECRET_ACCESS_KEY &

# コンテナを起動させ続けるために、ベースイメージの`CMD`を最後に追加
node
