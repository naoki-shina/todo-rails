class UserController < ApplicationController
  def show
    @board = Board.new
    @boards = current_user.boards
  end
end
