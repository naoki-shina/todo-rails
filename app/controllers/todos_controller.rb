class TodosController < ApplicationController
  before_action :variable_sets
  def index
  end

  private
  def variable_sets
    # for create board
    @board = Board.new
  end
end
