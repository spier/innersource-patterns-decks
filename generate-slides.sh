#!/bin/bash


# ディレクトリ内の .md ファイル名を取得する
files=`find slides/ -name "*.md"`

# 取得したファイル名を一つずつ処理する
for file in $files
do
    # ディレクトリ名を取り除く
    filename=$(basename "$file")
    # 拡張子を取り除く
    base=${filename%.*}
    # ファイル名を出力する
    npx marp --pptx --allow-local-files slides/$base.md --theme theme/base.css -o output/$base.pptx
    # npx marp --pdf --allow-local-files slides/$base.md --theme theme/base.css -o output/$base.pdf
done