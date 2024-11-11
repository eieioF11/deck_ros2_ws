# deck_ros2_ws

# 環境構築
## readonly disable
```bash
sudo steamos-readonly disable
```
## distroboxをインストール
https://qiita.com/KEROLL5/items/fdcc64d9d395e4ad1e86

## ubuntu22.04コンテナ作成
```bash
distrobox create -n ubuntu-22-04 -i ubuntu:jammy
```
## ubuntu22.04 コンテナに入る
```bash
distrobox enter ubuntu-22-04
```

## gh & ansible インストール
```bash
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh ansible -y
```

## githubログイン
```bash
gh auth login
```

## ubuntu初期設定
```bash
ansible-playbook --ask-become-pass ansible/setup.yml
source ~/.bashrc
```

## リポジトリのクローン
```bash
. update.sh
```
