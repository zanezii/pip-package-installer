#!/bin/bash

packages=(
    package1
    package2
    package3
)

for package in "${packages[@]}"
do
    echo "pip install $package ..."
    if pip install $package -i https://pypi.tuna.tsinghua.edu.cn/simple; then
        echo "$package installed"
    else
        echo "Skip $package"
    fi
done