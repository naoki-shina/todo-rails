# README

## Ruby version
  Ruby 2.3.1
  Rails 5.1.5

## Database creation

### users
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unipue: true|

### todos
|Column|Type|Options|
|------|----|-------|
|user_id|integr|null: false, foreign_key: true|
|text|string|null: false, unique: true|
|limit|date||
