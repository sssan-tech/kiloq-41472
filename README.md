# README

# 概要
KIlOQ(記録)アプリは、ユーザーが1日に特定の行動を記録し、後で確認できるアプリケーションです。
例えば、薬を飲んだ回数や勤務中に立ち上がった回数などを記録することができます。
本アプリケーションはRuby on Railsを使用して構築されています。

## テーブル設計
以下は本アプリケーションのテーブル設計です。

### categoriesテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| color              | string | null: false |

#### Association
- has_many :records

### recordsテーブル
| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| recorded_at        | datetime   | null: false |
| category           | references | null: false, foreign_key: true |

#### Association
- belongs_to :category