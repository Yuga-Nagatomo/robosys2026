#!/bin/bash
# SPDX-FileCopyrightText: 2026 Yuga Nagatomo
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目のテスト失敗"
    res=1
}

res=0

### NORMAL INPUT ###
out=$(echo "ラーメン" | ./calorie 2>/dev/null)
expected="醤油ラーメン,470
味噌ラーメン,550
豚骨ラーメン,600
塩ラーメン,450"

[ "${out}" = "${expected}" ] || ng "$LINENO"

### UNKNOWN INPUT ###
out=$(echo "寿司" | ./calorie 2>/dev/null)
status=$?

[ "${status}" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

### EMPTY INPUT ###
out=$(echo "" | ./calorie 2>/dev/null)
status=$?

[ "${status}" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

### STANDARD ERROR ###
err=$(echo "寿司" | ./calorie 2>&1 >/dev/null)
[ "${err}" = "該当する料理が見つかりません。" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
