***REMOVED*** キリスト教会マップ：README

***REMOVED******REMOVED*** Webサイト
***REMOVED******REMOVED******REMOVED*** [キリスト教会マップ](https://www.christchurches-map.com/)

***REMOVED******REMOVED*** 概要
***REMOVED******REMOVED******REMOVED*** ・キリスト教会マップは、日本全国にあるプロテスタント教会をマップに表示します。
***REMOVED******REMOVED******REMOVED*** ・教団教派・グループ・都道府県・名前・住所で検索することができます。
***REMOVED******REMOVED******REMOVED*** ・教会に行ったことがない方でも、その教会がどのような雰囲気か知ることができるようにします。

***REMOVED******REMOVED*** バージョン
***REMOVED******REMOVED******REMOVED*** Ruby

````
2.5.5
````

***REMOVED******REMOVED******REMOVED*** Ruby on Rails

```
5.2.3
```

***REMOVED******REMOVED******REMOVED*** MySQL

```
5.6.36
```

***REMOVED******REMOVED*** 環境構築手順
***REMOVED******REMOVED******REMOVED*** 記事
***REMOVED******REMOVED******REMOVED*** [キリスト教会マップ：(1) ローカルで仮想環境作成](http://qiita.com/iwaseasahi/private/61859b1cc0fc451682f1)
***REMOVED******REMOVED******REMOVED*** [キリスト教会マップ：(2) Ruby on Rails](http://qiita.com/iwaseasahi/private/c54043ee76487074cc04)
***REMOVED******REMOVED******REMOVED*** [キリスト教会マップ：(3) 開発環境の準備①](http://qiita.com/iwaseasahi/private/55e038757425ba98e66a)
***REMOVED******REMOVED******REMOVED*** [キリスト教会マップ：(3) 開発環境の準備②](http://qiita.com/iwaseasahi/private/7e77b8b91ac90314e3c5)
***REMOVED******REMOVED******REMOVED*** [キリスト教会マップ：(3) 開発環境の準備③](http://qiita.com/iwaseasahi/private/b4dcafa83c442e71a21d)
***REMOVED******REMOVED******REMOVED*** [キリスト教会マップ：(4) 開発](http://qiita.com/iwaseasahi/private/b2a549cd9a64d62c01c8)

***REMOVED******REMOVED******REMOVED*** Mac
***REMOVED******REMOVED******REMOVED******REMOVED*** Path設定

```
$ echo 'export PATH=/usr/local/bin:$PATH' >> ~/.bash_profile
$ source ~/.bash_profile
```

***REMOVED******REMOVED******REMOVED******REMOVED*** インストール確認

```
$ brew doctor
Your system is ready to brew.
```

***REMOVED******REMOVED******REMOVED*** Git

```
$ brew install git
```

***REMOVED******REMOVED******REMOVED*** readline

```
$ brew install readline
```

***REMOVED******REMOVED******REMOVED*** openssl

```
$ brew install openssl
```

***REMOVED******REMOVED******REMOVED*** ruby-build

```
$ brew install ruby-build
```

***REMOVED******REMOVED******REMOVED*** rbenv

```
$ brew install rbenv
```

***REMOVED******REMOVED******REMOVED******REMOVED*** Path設定

```
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ source ~/.bash_profile
```

***REMOVED******REMOVED******REMOVED*** ruby

```
$ rbenv install 2.3.1
```

***REMOVED******REMOVED******REMOVED*** ローカル環境へリポジトリをクローン

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

***REMOVED******REMOVED******REMOVED*** MySQL

```
$ brew install mysql
```

```
$ brew services start mysql
```

***REMOVED******REMOVED******REMOVED*** redis

```
$ brew install redis
```

```
$ brew services start redis
```

***REMOVED******REMOVED******REMOVED*** memcached

```
$ brew install memcached
```

```
$ brew services start memcached
```

```
$ ps aux | grep memcached
```

***REMOVED******REMOVED******REMOVED*** CoffeeScript 環境構築

```
$ brew install node
```

```
$ npm install -g coffee-script
```

***REMOVED******REMOVED******REMOVED*** ImageMagick

```
$ brew install imagemagick@6
```

```
$ brew link --force imagemagick@6
```

***REMOVED******REMOVED******REMOVED*** Gemのインストール

```
$ bundle install --path ./vendor/bundle
```

***REMOVED******REMOVED******REMOVED*** envファイルをコピー

***REMOVED******REMOVED******REMOVED*** DBを作成
***REMOVED******REMOVED******REMOVED******REMOVED*** ※ [MySQL：エラー対応](http://qiita.com/iwaseasahi/private/2c4fc7ad3419c720cccd)
***REMOVED******REMOVED******REMOVED******REMOVED*** ※ [Mac：MySQLパスワード設定](http://qiita.com/iwaseasahi/private/00b080c01bc028ba4516)

```
$ bundle exec rake db:create
```

```
$ bundle exec rake db:migrate
```

***REMOVED******REMOVED******REMOVED*** Sequel PRO
***REMOVED******REMOVED******REMOVED******REMOVED*** ローカル

![スクリーンショット 2017-08-12 12.08.20.png](https://qiita-image-store.s3.amazonaws.com/0/142810/68286332-23f1-cb53-b0aa-8699e59680c1.png "スクリーンショット 2017-08-12 12.08.20.png")

***REMOVED******REMOVED******REMOVED******REMOVED*** テスト

![スクリーンショット 2017-08-12 12.16.24.png](https://qiita-image-store.s3.amazonaws.com/0/142810/6c4058bd-7cf9-c574-283d-5c432372f127.png "スクリーンショット 2017-08-12 12.16.24.png")

***REMOVED******REMOVED******REMOVED*** DBデータのダンプ

***REMOVED******REMOVED******REMOVED*** Rails起動

```
$ bundle exec rails s
```

***REMOVED******REMOVED*** 必要なパッケージ
***REMOVED******REMOVED******REMOVED*** centOS
***REMOVED******REMOVED******REMOVED******REMOVED*** Redis
***REMOVED******REMOVED******REMOVED******REMOVED*** ibjpeg-devel
***REMOVED******REMOVED******REMOVED******REMOVED*** libpng-devel

```
$ sudo yum -y install libjpeg-devel libpng-devel
```

***REMOVED******REMOVED******REMOVED******REMOVED*** ImageMagick

```
$ ImageMagick-devel
```
