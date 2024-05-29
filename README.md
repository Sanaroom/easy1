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