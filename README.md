# embulk playground
# 1. CSV から ローカル MySQL
- CSV データを MySQL へ投入する
- Embulk の環境用と、MySQL 用の Docker を docker-compose で用意する
- Embulk が参照する host には docker-compose で立ち上げたサービス名を渡す
## 手順
- Project フォルダで以下の手順を行う.
1. Docker コンテナ作成
```bash
$ docker-compose build --no-cache
$ docker-compose up
```
2. Embulk Docker コンテナに入る
- `$ docker exec -it embulk_test bash`
- (環境変数ファイルを変えたい: `docker-compose up --env-file .env.test ...`. または Project フォルダに置くと自動で読み込む)
3. CSV データを MySQL へ投入
- `$ embulk run load.yml.liquid`
4. MySQL コンテナで結果を確認
## 参考
- [Docker MySQL](https://qiita.com/A-Kira/items/f401aea261693c395966)
- [Embulk CSV to MYSQL](https://qiita.com/shinyashikis@github/items/80162a252f92b3aca3a8#embulk%E5%AE%9A%E7%BE%A9%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
- [CSV to TreasureData](https://www.datacurrent.co.jp/column/embulk-on-docker20210519/)
- [MySQL to BQ](https://tech.griphone.co.jp/2018/12/04/advent-calendar-20181204/)