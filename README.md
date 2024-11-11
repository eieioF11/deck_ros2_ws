# deck_ros2_ws
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

# 環境構築
## 初期設定
```bash
ansible-playbook --ask-become-pass ansible/setup.yml
source ~/.bashrc
```

## リポジトリのクローン
```bash
. update.sh
```