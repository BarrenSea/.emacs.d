#!/bin/bash
USER_HOME="$HOME"
PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "${PATH}"
EMACS_HOME="${USER_HOME}/.emacs.d"

if [ -d "$EMACS_HOME" ]; then
    echo "$TARGET_DIR 已存在，是否覆盖？(y/n)"
    read -r answer
    if [[ "$answer" != "y" && "$answer" != "Y" ]]; then
        echo "操作已取消。"
        exit 1
    fi
    # 删除旧目录
    rm -rf "$TARGET_DIR"
fi

echo "Copying ${PATH} Into ${EMACS_HOME}"
cp -R "$PATH" "$EMACS_HOME"




