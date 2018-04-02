class TodosController < ApplicationController
  before_action :variable_sets
  def index
  end

  private
  def variable_sets
    # for create board
    @board = Board.find(params[:board_id])
    # get current_users boards
    @boards = current_user.boards
  end
end
