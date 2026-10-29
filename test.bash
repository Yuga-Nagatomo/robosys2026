#!/bin/bash

ng () {
        echo ${1}行目のテスト失敗
        res=1
}

res=0
a=長友
[ "$a" = 長野 ] || ng "$LINENO"
[ "$a" = 長友 ] || ng "$LINENO"

exit $res
