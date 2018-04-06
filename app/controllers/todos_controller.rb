class TodosController < ApplicationController
  before_action :variable_sets
  # before_action :todo_params
  def index
    @todo = Todo.new
    @todos = @board.todos.includes(:user)
  end

  def create
    @todo = @board.todos.new(todo_params)

    if @todo.save
      respond_to do |format|
        format.html {redirect_to board_todos_path(params[:board_id]), notice: "カードが追加されました"}
        format.json
      end
    else
      @todos = @board.todos.includes(:user)
      flash.now[:alert] = "メッセージを入力してください"
      render :index
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def variable_sets
    # for create board
    @board = Board.find(params[:board_id])
    # get current_users boards
    @boards = current_user.boards
  end

  def todo_params
    params.require(:todo).permit(:text, :limit, :check).merge(user_id: current_user.id)
  end
end
