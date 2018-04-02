class Board < ApplicationRecord
  has_many :todos
  has_many :user_boards, dependent: :destroy
  has_many :users, through: :user_boards
  accepts_nested_attributes_for :user_boards
end
