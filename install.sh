#!/bin/sh
TMP_DIR="/tmp"

# rime輸入法配置
rime() {
    echo "正在安裝rime"
    git checkout rime
    echo "切換到rime分支"
    cp -r rime-data $TMP_DIR
    echo "复制到TMP_DIR"
    git checkout main
    cp -r $TMP_DIR/rime-data ./rime-data
    echo "复制到主分支"
    rm -rf $TMP_DIR/rime-data
    echo "删除临时文件"
}


rime
