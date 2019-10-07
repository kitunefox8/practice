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
|firstname|string|null: false,foreign_key|
|lastname|string|null: false,foreign_key|
|firstkana|string|null: false,foreign_key|
|lastkana|string|null: false,foreign_key|
|birth-year|date|null: false,foreign_key|
|birth-month|date|null: false,foreign_key|
|birth-day|date|null: false,foreign_key|
|tell|string|foreign_key,unipue: true|
|zipcode|string|null: false,foreign_key|
|prefecture|string|null: false,foreign_key|
|city|string|null: false,foreign_key|
|district|string|null: false,foreign_key|
|building|string|foreign_key|
### Association
- belongs_to :usars

## products
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|text|null: false|
|price|string|null: false|
|seller-name-id|inteder|null: false,foreign_key: true|
|category-id|inteder|null: false,foreign_key: true|
|brand|string||
|size-id|inteder||
|description|inteder|null: false|
|state-id|inteder|null: false|
|status-id|inteder|null: false|
### Association
- has_many :comments
- has_many :likes
- belongs_to :order

## coment
|Column|Type|Options|
|------|----|-------|
|id|inteder||
|comment-text||
|product-id|inteder|
|user-id|inteder||
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
|user-id|inteder||
|product-id|inteder||
### Association
- belongs_to :users
- belongs_to :products

## tradindg
|Column|Type|Options|
|------|----|-------|
|id|inteder||
|seller-id|inteder||
|buyer-id|inteder||
### Association
- has_many :reviws
- has_many :orders

## order
|Column|Type|Options|
|------|----|-------|
|id|inteder||
|product-id|inteder||
|trading-id|inteder||
### Association
- belongs_to :products

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
|product-id|integer||
|image-url|string||
### Association

## shipping
|Column|Type|Options|
|------|----|-------|
|delivary-method|string|null: false|
|prefecture-from|string|null: false|
|preiod|string|null: false|
|delivaryfee|string|null: false|
|id|integer|null: false|
### Association

## sns_credentials
|Column|Type|Options|
|------|----|-------|
|id|integer||
|user-id|integer||
|provider|string||
### Association

## creditcard
|Column|Type|Options|
|------|----|-------|
|user-id|integer|null: false|
|cardnumber|string|null: false|
### Association
- belongs_to:user

## seller
|Column|Type|Options|
|------|----|-------|
|seller-id|inteder||
|buyer-id|inteder||
### Association
- belongs_to:buyer

## buyer
|Column|Type|Options|
|------|----|-------|
|seller-id|inteder||
|buyer-id|inteder||
### Association
- belongs_to:seller