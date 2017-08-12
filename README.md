# キリスト教会マップ：README

## Webサイト
### [キリスト教会マップ](https://www.christchurches-map.com/)

## 概要
### ・キリスト教会マップは、日本全国にあるプロテスタント教会をマップに表示します。
### ・教団教派・グループ・都道府県・名前・住所で検索することができます。
### ・教会に行ったことがない方でも、その教会がどのような雰囲気か知ることができるようにします。

## バージョン
### Ruby

````
2.3.1
````

### Ruby on Rails

```
5.0.1
```

### MySQL

```
5.6.36
```

## 環境構築手順
### 記事
### [キリスト教会マップ：(1) ローカルで仮想環境作成](http://qiita.com/iwaseasahi/private/61859b1cc0fc451682f1)
### [キリスト教会マップ：(2) Ruby on Rails](http://qiita.com/iwaseasahi/private/c54043ee76487074cc04)
### [キリスト教会マップ：(3) 開発環境の準備①](http://qiita.com/iwaseasahi/private/55e038757425ba98e66a)
### [キリスト教会マップ：(3) 開発環境の準備②](http://qiita.com/iwaseasahi/private/7e77b8b91ac90314e3c5)
### [キリスト教会マップ：(3) 開発環境の準備③](http://qiita.com/iwaseasahi/private/b4dcafa83c442e71a21d)
### [キリスト教会マップ：(4) 開発](http://qiita.com/iwaseasahi/private/b2a549cd9a64d62c01c8)

### Mac
#### Path設定

```
$ echo 'export PATH=/usr/local/bin:$PATH' >> ~/.bash_profile
$ source ~/.bash_profile
```

#### インストール確認

```
$ brew doctor
Your system is ready to brew.
```

### Git

```
$ brew install git
```

### readline

```
$ brew install readline
```

### openssl

```
$ brew install openssl
```

### ruby-build

```
$ brew install ruby-build
```

### rbenv

```
$ brew install rbenv
```

#### Path設定

```
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ source ~/.bash_profile
```

### ruby

```
$ rbenv install 2.3.1
```

### ローカル環境へリポジトリをクローン

```
$ cd
```

```
$ mkdir projects
```

```
$ cd projects
```

```
$ git clone git@github.com:iwaseasahi/christchurches-map.git
```

```
$ gem install bundler
```

```
$ bundle init
```

```
$ vim Gemfile
```

```
gem "rails", '5.0.1'
```

```
$ bundle install --path vendor/bundle --jobs=4
```

```
$ bundle exec rails -v
Rails 5.0.1
```

```
$ cd christchurches-map
```

```
$ git remote -v
origin	git@github.com:iwaseasahi/christchurches-map.git (fetch)
origin	git@github.com:iwaseasahi/christchurches-map.git (push)
```

### MySQL

```
$ brew install mysql
```

```
$ brew services start mysql
```

### redis

```
$ brew install redis
```

```
$ brew services start redis
```

### memcached

```
$ brew install memcached
```

```
$ brew services start memcached
```

```
$ ps aux | grep memcached
```

### CoffeeScript 環境構築

```
$ brew install node
```

```
$ npm install -g coffee-script
```

### ImageMagick

```
$ brew install imagemagick@6
```

```
$ brew link --force imagemagick@6
```

### Gemのインストール

```
$ bundle install --path ./vendor/bundle
```

### envファイルをコピー

### DBを作成
#### ※ [MySQL：エラー対応](http://qiita.com/iwaseasahi/private/2c4fc7ad3419c720cccd)
#### ※ [Mac：MySQLパスワード設定](http://qiita.com/iwaseasahi/private/00b080c01bc028ba4516)

```
$ bundle exec rake db:create
```

```
$ bundle exec rake db:migrate
```

### Sequel PRO
#### ローカル

![スクリーンショット 2017-08-12 12.08.20.png](https://qiita-image-store.s3.amazonaws.com/0/142810/68286332-23f1-cb53-b0aa-8699e59680c1.png "スクリーンショット 2017-08-12 12.08.20.png")

#### テスト

![スクリーンショット 2017-08-12 12.16.24.png](https://qiita-image-store.s3.amazonaws.com/0/142810/6c4058bd-7cf9-c574-283d-5c432372f127.png "スクリーンショット 2017-08-12 12.16.24.png")

### DBデータのダンプ

### Rails起動

```
$ bundle exec rails s
```

## 必要なパッケージ
### centOS
#### Redis
#### ibjpeg-devel
#### libpng-devel

```
$ sudo yum -y install libjpeg-devel libpng-devel
```

#### ImageMagick

```
$ ImageMagick-devel
```
