## [キリスト教会マップ](https://www.christchurches-map.com/)

<img width="1222" alt="christchurches-map-top-image" src="https://user-images.githubusercontent.com/17666221/84217927-56a58e80-ab08-11ea-9738-c2ac6cd2fb54.png">

## 概要
[@iwaseasahi](https://github.com/iwaseasahi) が元々、キリスト教会の牧師をやっていた経験からあったら便利だと思ったアイディアをサービスにしたものです。
以下のような特徴があります。

* キリスト教会マップは、日本全国にあるプロテスタント教会をマップに表示します。
* 教団教派・グループ・都道府県・名前・住所で検索することができます。
* 教会に行ったことがない方でも、その教会がどのような雰囲気か知ることができるようにします。

## アーキテクチャ

![christchurches-map-architect](https://user-images.githubusercontent.com/17666221/84221371-09c5b600-ab10-11ea-92f5-c89952397258.png)

## バージョン

| 技術 | version |
| :---: | :---: |
| Ruby | 2.5.5 |
| Rails | 6.0.3.1 |
| MySQL | 5.6.36 |

## 環境構築手順
Docker を使用しているため、Docker Desktop がインストールされていることを前提としています。

各種 image を build します。

```
$ docker-compose build
```

database を作成します。

```
$ docker-compose run --rm web rails db:create
```

migrate を実行します。

```
$ docker-compose run --rm web rails db:migrate
```

```
$ docker-compose run -e RAILS_ENV=test --rm web rails db:migrate
```

rails を起動します。

```
$ docker-compose up
```

## ステータス
[![CircleCI](https://circleci.com/gh/iwaseasahi/christchurches-map.svg?style=svg&circle-token=edf49afb5c4771796b3a9387ef48761121ae34ff)](https://circleci.com/gh/iwaseasahi/christchurches-map)
