# Getting Started

リポジトリ Clone 後、以下の項目を実行する。

1. Container の build

```
docker-compose build
```

2. DB 作成

```
docker-compose run api rails db:create
```

3. DB のマイグレーション

```
docker-compose run api rails db:migrate
```

4. `firebase-auth-rails`の初期化

`firebase-auth-rails`で JWT 検証を行うために`rails console`で以下の内容を実行して下さい。
`FirebaseIdToken::Certificates.present?`を実行し、`true`が返ってきたら OK です。

```
docker-compose run api rails c
```

rails console にて以下を実行

```
irb(main):001:0>FirebaseIdToken::Certificates.request
・
・
・
irb(main):002:0>FirebaseIdToken::Certificates.present?
=> true

```

# Container の起動・停止

Container の立ち上げ

```
docker-compose up -d
```

Container の停止

```
docker-compose stop
```

# 他コマンド

credentials の編集

```
docker-compose run api rails credentials:edit --environment development

docker-compose run api rails credentials:edit --environment staging

docker-compose run api rails credentials:edit --environment production

docker-compose run api rails credentials:edit --environment test
```
