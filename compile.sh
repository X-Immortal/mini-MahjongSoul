#!/usr/bin/env bash
set -e
git add -A
git commit --allow-empty -m "compile"
gcc $(find ./src -name "*.c") -std=c17 -lm -march=native -O2 -fno-strict-aliasing -Wall -DONLINE_JUDGE -fdiagnostics-color=always -o majsa

# 这是 OJ 会在 Linux 系统中执行的编译脚本，你可以在本地 Linux 系统中用该指令编译测试。

# 可用来本地调试的编译脚本如下：

# gcc $(find ./src -name "*.c") -std=c17 -lm -march=native -O2 -fno-strict-aliasing -Wall -DONLINE_JUDGE -fdiagnostics-color=always -fsanitize=undefined -fsanitize=address -o majsa