#!/bin/bash
echo "############"
echo "开始安装"

pkg_tool=""
cargostat=""
installcmd=""
#判断发行版
if hash 2>/dev/null apt-get; then
    echo "检测到apt-get管理器"
    pkg_tool="apt-get"
    installcmd="install -y"
elif hash 2>/dev/null emerge; then
    echo "检测到Gentoo"
    pkg_tool="gentoo"
    installcmd=""
elif hash 2>/dev/null yum; then
    echo "检测到yum"
    pkg_tool="yum"
    installcmd="install -y"
elif hash 2>/dev/null dnf; then
    echo "检测到dnf"
    pkg_tool="dnf"
    installcmd="install -y"    
elif hash 2>/dev/null pacman; then
    echo "检测到pacman"
    pkg_tool="pacman"
    installcmd="-S"
fi

#判断cargo
if cargo 1>/dev/null 2>/dev/null; then
    echo "已经安装rust"
else
    echo "是否为您安装rust? y/n"
    read yesorno
    if echo "$yesorno" |grep -iq "^y"; then
	    ${pkg_tool} ${installcmd} cargo
    else
	exit 1
    fi
fi

#判断typst
if hash 2>/dev/null typst; then
    echo "已经安装typst"
else
    echo "是否为您安装typst? y/n"
    read yesorno
    if echo "$yesorno" |grep -iq "^y"; then
	cargo install typst-cli
    else
	exit 1
    fi
fi

#判断rime
if rime_deployer 1>/dev/null 2>/dev/null; then
    echo "已经安装rime"
else
    echo "是否为您安装rime? y/n"
    read yesorno
    if echo "$yesorno" |grep -iq "^y"; then
	    ${pkg_tool} ${installcmd} librime
    else
	exit 1
    fi
fi

#安装字体
echo "安装all-the-icons字体"
echo "您需要安装吗?"
read yesorno
if echo "$yesorno" |grep -iq "^y"; then
    cd ~/.emacs.d/fonts/
    fc-cache -f -v

fi
echo "安装已经完成"
echo "##########"
echo "DonjuanPlatinum"
echo "donjuan@lecturify.net"
exit 0
