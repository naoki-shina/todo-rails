class BoardsController < ApplicationController
  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    @board.save
    @user_boards = UserBoard.new(user_id: current_user.id, board_id: @board.id)
    @user_boards.save
  end

  private
  def board_params
    params.require(:board).permit(:name, { :user_ids => [] })
  end
end
