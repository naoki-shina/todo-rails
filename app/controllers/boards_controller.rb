class BoardsController < ApplicationController
  before_action :board_set, only: [:edit, :update]
  before_action :newBoard_setBoards, only: [:index, :edit]

  def index
  end

  def create
    @board = Board.new(board_params)
    @board.save
    @user_boards = UserBoard.new(user_id: current_user.id, board_id: @board.id)
    @user_boards.save
  end

  def edit
    @users = @board.users
  end

  def update
    @board.update(board_params)
    redirect_to edit_board_path(@board), notice: 'ボード名を編集しました'
  end


  private
  def board_params
    params.require(:board).permit(:name, { :user_ids => [] })
  end

  def board_set
    @board = Board.find(params[:id])
  end

  def newBoard_setBoards
    @board_new = Board.new
    @boards = current_user.boards
  end
end
