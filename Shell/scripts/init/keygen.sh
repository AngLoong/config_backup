#!/bin/sh

## 生成各个git平台的ssh公钥

# github
if [ -f ~/.ssh/github_id_rsa ]; then
  echo "==>github_id_rsa already exist"
else
  ssh-keygen -t rsa -C "angloong@outlook.com" -f ~/.ssh/github_id_rsa
fi

# gitee
if [ -f ~/.ssh/gitee_id_rsa ]; then
  echo "==>gitee_id_rsa already exist"
else
  ssh-keygen -t rsa -C "angloong@outlook.com" -f ~/.ssh/gitee_id_rsa
fi

# gitcode
if [ -f ~/.ssh/gitcode_id_rsa ]; then
  echo "==>gitcode_id_rsa already exist"
else
  ssh-keygen -t rsa -C "angloong@outlook.com" -f ~/.ssh/gitcode_id_rsa
fi

exit 0
