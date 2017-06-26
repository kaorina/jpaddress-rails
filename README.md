# jpaddress-rails

# このリポジトリについて
Ruby on Railsを使って日本の都道府県市町村のデータを参照するためのサンプルアプリです。
サンプルデータは都道府県は東京都のみ、それに紐づく市町村のみになります。

# データベース構造について
下記の３つのテーブルを持っています。
- Prefecture 都道府県
<br>（例: id=13, name="東京都"）

- City 市区
<br>（例: id=13101, name="千代田区", prefecture_id=13）

- Town 町村
<br>（例: id=131010001, name="飯田橋", city_id=13101）

# 初期設定
このリポジトリをclone後、下記の工程を実行してデータベースの作成、サンプルデータの作成を行って下さい。
(`config/database.yml`は `config/database.yml.sample`を参考にご自分の環境に合わせて作成してください。)

### データベース作成
```
$ ./bin/rake db:create
```

### サンプルデータ作成
`/db/prefecture.csv`, `city.csv`, `town.csv` のデータがインポートされます。
```
$ ./bin/rake db:seed
```
