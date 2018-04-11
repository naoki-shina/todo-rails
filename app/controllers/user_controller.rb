class UserController < ApplicationController
  def show
  # for header create new action in boards controller
    @board_new = Board.new
  # for show current_user board list
    @boards = current_user.boards
  end
end
