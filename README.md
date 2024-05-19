## checks テーブル
| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| number             | integer | null: false |
| attendance         | integer | null: false |

Association
  belongs_to:sheet
  belongs_to:user
  belongs_to:comment


## users テーブル
| Column              | Type      | Options     |
| ------------------- | --------- | ----------- |
| email               | string    | null: false, unique: true |
| encrypted_password  | string    | null: false |
| grade               | integer   | null: false |
| class               | integer   | null: false |
| name                | string    | null: false |

Association
  belongs_to:check
  belongs_to:sheet
  belongs_to:comment

## comments テーブル
| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| comment   | text       | null: false |

| event     | integer    | null: false |
| user      | references | null: false, foreign_key: true |

Association
  belongs_to:check
  belongs_to:sheet
  belongs_to:user