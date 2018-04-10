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

#### association
has_many :todos
has_many :user_boards
has_many :boards through user_board


### todos
|Column|Type|Options|
|------|----|-------|
|user_id|integr|null: false, foreign_key: true|
|board_id|integr|null: false, foreign_key: true|
|text|string|null: false, unique: true|
|limit|date||
|check|integer|null: false|
|list|integer|null: false|

#### association
belongs_to :user
belongs_to :board


### boards
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|

#### association
has_many :todos
has_many :user_boards
has_many :users through user_board


### user-board
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|board_id|integer|null: false, foreign_key: true|

#### association
belongs_to :user
belongs_to :board

