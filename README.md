#usersテーブル
|column|Type|Option|
|------|----|-------|
|nick_name|string|null: false|
|email_address|string|null: false|
|password|string|null: false|
### Association
- has_many :comments
- has_many: items
- has_many: addresses
- has_one: credit
- has_one: profile



#profilesテーブル
|column|Type|Option|
|------|----|-------|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|month_birth_at|integer|null: false|
|day_birth_at|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|phone_number|integer|null: false|
### Association
- belongs_to :user


#creditsテーブル
|column|Type|Option|
|------|----|-------|
|use_id|integer|null: false, foreign_key: true|
|card_number|integer|length: {within:15..16}|
|year_deadline|integer|null: false|
|month_deadline|integer|null: false|
|security_number|integer|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|card_name|string|null: false|
### Association
- has_one :user


#addressesテーブル
|column|Type|Option|
|------|----|-------|
|use_id|integer|null: false, foreign_key: true|
|post_number|string|null: false|
|city|string|null: false|
|town|string|null: false|
|building|string|null: false|
|prefecture|string|null: false|
### Association
- belongs_to :user


#commentsテーブル
|column|Type|Option|
|------|----|-------|
|use_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
|text|text|null: false|
### Association
- belongs_to :user
- belongs_to :item



#imagesテーブル
|column|Type|Option|
|------|----|-------|
|image|string|null: false|
|item_id|integer|null: false, foreign_key: true|
### Association
-belongs_to :item



#itemsテーブル
|column|Type|Option|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false|
|explain|text|null: false|
|postage|integer|null: false|
|region|string|null: false|
|shipping_date|string|null: false|
|size|string|null: false|
|brand_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
|way_of_delivery|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|quality|string|null: false|
### Association
-has_many :images
-has_many :comments
-belongs_to :brand
-belongs_to :user
-belongs_to :category



#brandsテーブル
|name|string|null: false|
### Association
-has_many :items


#categoryテーブル
|name|string|null: false|
### Association
-has_many :items