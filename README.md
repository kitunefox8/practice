# freemarket_sample_60e DB設計
## users
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false,unipue: true|
|email|string|null: false,unipue: true|
|password|string|null: false|
### Association
- has_many :products
- has_many :tradings
- has_many :comments
- has_many :likes
- has_many :sns_credentials
- belongs_to :creditcard
- belongs_to :profile

## profile
|Column|Type|Options|
|------|----|-------|
|first_name|string|null: false,foreign_key|
|last_name|string|null: false,foreign_key|
|first_kana|string|null: false,foreign_key|
|last_kana|string|null: false,foreign_key|
|birth_year|date|null: false,foreign_key|
|birth_month|date|null: false,foreign_key|
|birth_day|date|null: false,foreign_key|
|phone_number|string|foreign_key,unipue: true|
### Association
- belongs_to :user

## addres
|Column|Type|Options|
|------|----|-------|
|zipcode|string|null: false,foreign_key|
|prefecture|string|null: false,foreign_key|
|city|string|null: false,foreign_key|
|district|string|null: false,foreign_key|
|building|string|foreign_key|
### Association
- belongs_to :user

## products
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|text|null: false|
|price|string|null: false|
|seller_name_id|inteder|null: false,foreign_key: true|
|category_id|inteder|null: false,foreign_key: true|
|brand|string||
|size_id|inteder||
|description|inteder|null: false|
|state_id|inteder|null: false|
|status_id|inteder|null: false|
### Association
- has_many :comments,　dependent: :destroy
- has_many :likes, dependent: :destroy
- belongs_to :user
- belongs_to :order

## comment
|Column|Type|Options|
|------|----|-------|
|id|inteder||
|comment_text||
|product_id|inteder|
|user_id|inteder||
### Association
- belongs_to :user
- belongs_to:product

## review
|Column|Type|Options|
|------|----|-------|
|id|inteder||
|rating|string||
|trading-id|inteder||
### Association
- belongs_to :trading

## like
|Column|Type|Options|
|------|----|-------|
|id|inteder||
|user_id|inteder||
|product_id|inteder||
### Association
- belongs_to :user
- belongs_to :product

## tradindg
|Column|Type|Options|
|------|----|-------|
|id|inteder||
|seller_id|inteder||
|buyer_id|inteder||
### Association
- has_many :reviws
- has_many :orders

## order
|Column|Type|Options|
|------|----|-------|
|id|inteder||
|product_id|inteder||
|trading_id|inteder||
### Association
- belongs_to :product

## category
|Column|Type|Options|
|------|----|-------|
|id|inteder|null: false|
|name|string|null: false|
|children-id|inteder|null: false|
|grand children-id|inteder|null: false|
### Association
- has_many :products

## children
|Column|Type|Options|
|------|----|-------|
|id|inteder|null: false|
|name|string|null: false|
|children-id|inteder|null: false|
### Association
- belongs_to :category

## grand children
|Column|Type|Options|
|------|----|-------|
|id|inteder|null: false|
|name|string|null: false|
|grand children-id|inteder||
### Association
- belongs_to : children

## status
|Column|Type|Options|
|------|----|-------|
|id|integer||
|name|string||

### Association
- has_many :products

## state
|Column|Type|Options|
|------|----|-------|
|id|integer||
|name|string||
### Association
- has_many :products

## size
|Column|Type|Options|
|------|----|-------|
|id|integer||
|name|string||
### Association
- has_many :products

## brabd
|Column|Type|Options|
|------|----|-------|
|id|integer||
|name|string||
|brand-group-id|integer||
### Association

## brand_group
|Column|Type|Options|
|------|----|-------|
|id|integer||
|name|string||
### Association
- has_many:brands

## image
|Column|Type|Options|
|------|----|-------|
|id|integer||
|product_id|integer||
|image-url|string||
### Association
- belongs_to :product

## shipping
|Column|Type|Options|
|------|----|-------|
|delivary-method|string|null: false|
|prefecture-from|string|null: false|
|preiod|string|null: false|
|delivaryfee|string|null: false|
|id|integer|null: false|
### Association
- belongs_to :status

## sns_credentials
|Column|Type|Options|
|------|----|-------|
|id|integer||
|user_id|integer||
|provider|string||
### Association
- belongs_to :user

## creditcard
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|cardnumber|string|null: false|
### Association
- belongs_to:user

## seller
|Column|Type|Options|
|------|----|-------|
|seller_id|inteder||
|buyer_id|inteder||
### Association
- belongs_to:buyer

## buyer
|Column|Type|Options|
|------|----|-------|
|seller_id|inteder||
|buyer_id|inteder||
### Association
- belongs_to:seller