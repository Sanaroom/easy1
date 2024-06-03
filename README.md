# アプリケーション名
Easy

# アプリケーション概要
生徒が出欠登録を行ったり、教師が掲示板としてコメントできる。

# URL
http://35.79.76.217/

# テスト用アカウント
Basic認証ID：admin<br>
Basic認証password：2222<br>
メールアドレス：bb@bb<br>
パスワード：bbbbbb

# 利用方法
## 出欠登録
1,トップページのでユーザーの新規登録・ログインを行う。<br>
2,出欠登録ボタンから、内容（出席番号）を入力し登録する。<br>
3,出欠登録し、出欠一覧表を確認する。

## コメント確認
1,遠隔で今日の行事や先生からの一言をコメントする。<br>
2,出欠一覧表とともに、生徒がそれを閲覧する。

# アプリケーションを作成した背景
前職である教員を活かして、教員の業務効率化とともに、子どもたちが自分で出欠を登録することで学校に来た感覚を味わってほしいということから開発することにした。

# 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/1hUh-3geFZLchCxnT-sy1QwdhB6ImfwUIJyIG5VutOl8/edit#gid=982722306)

# 実装予定の機能
現在、宿題確認機能を実装中。<br>
今後は先生のページへ遷移する時に認証機能を取り入れる予定。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/89c4fcc9df47f45430002a0757705917.png)](https://gyazo.com/89c4fcc9df47f45430002a0757705917)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/a72a79669249ba74cb442c43bb97960d.png)](https://gyazo.com/a72a79669249ba74cb442c43bb97960d)

# 開発環境
・フロントエンド<br>
・バックエンド<br>
・インフラ<br>
・テスト<br>
・テキストエディタ<br>
・タスク管理

# ローカルでの動作方法
以下のコマンドを順に実行。<br>
% git clone https://github.com/Sanaroom<br>
% cd easy1<br>
% bundle install<br>
% yarn install

# 工夫したポイント
・教師が遠隔でコメントすることで、黒板に書かずとも掲示板として残る形にできるようになったところ。<br>
・生徒が出席した意識をもつことができるようになるところ。<br>
・低学年でも登録しやすいようにりんごやみかんのマークを記載しているところ。



## checks テーブル
| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| user               | references | null: false, foreign_key: true |
| number_id          | integer | null: false |
| attendance_id      | integer | null: false |

Association
  belongs_to:user
  has_many:comments


## users テーブル
| Column              | Type      | Options     |
| ------------------- | --------- | ----------- |
| email               | string    | null: false, unique: true |
| encrypted_password  | string    | null: false |
| grade               | integer   | null: false |
| class               | integer   | null: false |
| name                | string    | null: false |

Association
  has_many:checks
  has_many:comments

## comments テーブル
| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| user      | references | null: false, foreign_key: true |
| board     | string     | null: false |


Association
  has_many:checks
  belongs_to:user
