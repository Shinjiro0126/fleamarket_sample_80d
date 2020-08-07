# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

## itemsテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null:false|
|introduction|text|null:false|
|image_id|references|null:false,foreign_key:true|
|user|references|null:false,foreign_key:true|
|category_id|references|null:false,foreign_key:true|
|brand_id|references|foreign_key:true|
|condition|string|null:false|
|postage_payer|string|null:false|
|prefecture_id|references|null:false,foreign_key:true|(active_hash)
|preparation_days|string|null:false|
|price|integer|null:false|
|sell_status|integer|null:false|

### Association
- belongs_to :user
- belongs_to :category
- belongs_to :brand
- has_many :item_image
- belongs_to :prefecture

## prefecture active hash

### Association
- has_many :items
- has_many :sendings


## brandテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null:false|

### Association
- has_many :items

## item_imageテーブル
|column|Type|Options|
|------|----|-------|
|image|string|null:false|

### Association
- belongs_to :items

## categoryテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null:false|
|ancestry|string|null:false|(gem)

### Association
- has_many :items

## usersテーブル
|column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|mail|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :items
- has_one :profile
- has_one :sending
- has_one :credit_card


## profilesテーブル
|column|Type|Options|
|------|----|-------|
|first_name|string|null:false|
|family_name|string|null:false|
|first_name_kana|string|null:false|
|family_name_kana|string|null:false|
|birth_year|date|null:false|
|birth_month|date|null:false|
|use_id|references|null:false, foreign_key:true|

### Association
- belongs_to :user

## sendingテーブル
|column|Type|Options|
|------|----|-------|
|first_name|string|null:false|
|family_name|string|null:false|
|first_name_kana|string|null:false|
|family_name_kana|string|null:false|
|post_code|integer|null:false|
|prefecture_id|references|foreign_key:true, null:false|
|city|string|null:false|
|house_number|string|null:false|
|building_name|string|-------|
|phone_number|integer|-------|
|use_id|references|null:false, foreign_key:true|

### Association
- belongs_to :user
- belongs_to :prefecture

## credit_cardsテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null:false, unique:true|
|card_number|integer|null:false, unique:true|
|expiration_year|integer|null:false|
|expiration_month|integer|null:false|
|use_id|references|null:false, foreign_key:true|

### Association
- belongs_to :user

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


