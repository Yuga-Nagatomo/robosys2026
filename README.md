# calorieコマンド

![test](https://github.com/Yuga-Nagatomo/robosys2026/actions/workflows/test.yml/badge.svg)

## 概要

標準入力から料理名を受け取り、1人前あたりの推定カロリーを表示するコマンドです。

料理名の一部を入力すると、その文字列を含む登録済みの料理を検索できます。

## 必要なソフトウェア

- Python 3
- テスト済みバージョン：3.10〜3.14

## インストール方法

GitHubからリポジトリを取得します。

```bash
git clone https://github.com/Yuga-Nagatomo/robosys2026.git
cd robosys2026
```

実行権限を設定します。

```bash
chmod +x calorie
```

## 使用方法

料理名を標準入力から入力します。

```bash
$ echo "ラーメン" | ./calorie
```

実行結果：

```text
醤油ラーメン,470
味噌ラーメン,550
豚骨ラーメン,600
塩ラーメン,450
```

料理名の一部でも検索できます。

## 機能

- 料理名の部分一致検索
- 登録されている料理の推定カロリーを表示
- 1人前あたりのカロリーを表示
- 該当する料理がない場合は標準エラー出力にエラーを表示
- 空の入力の場合は標準エラー出力にエラーを表示

出力形式は「料理名,カロリー」です。

表示されるカロリーは目安です。実際の数値は料理の材料、量、調理方法によって異なります。

## テスト環境

- Ubuntu 24.04 LTS
- GitHub Actions
- Python 3.10〜3.14

## テスト方法

以下のコマンドでテストを実行できます。

```bash
$ bash test.bash
```

すべてのテストに成功すると `OK` と表示されます。

## ライセンス

このソフトウェアパッケージは、3条項BSDライセンス（BSD-3-Clause）の下で公開されています。

- SPDX-License-Identifier: BSD-3-Clause
- Copyright (c) 2026 Yuga Nagatomo
