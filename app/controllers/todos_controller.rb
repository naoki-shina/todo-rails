class TodosController < ApplicationController
  before_action :variable_sets, except: [:search]
  # before_action :todo_params
  def index
    @board_new = Board.new
    @todo = Todo.new
    @todos = @board.todos.includes(:user)
  # set cards belongs to each list
    @list_1 = @todos.where(list: 1)
    @list_2 = @todos.where(list: 2)
    @list_3 = @todos.where(list: 3)
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

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      redirect_to board_todos_path(@board), notice: 'カードを編集しました'
    else
      render :index
    end
  end

  def destroy
  end

  def search
  @board_new = Board.new
  @boards = current_user.boards
  @search_todos = current_user.todos.where('text LIKE(?)', "%#{params[:keyword]}%")
  end

  private
  def variable_sets
    # for create board
    @board = Board.find(params[:board_id])
    # get current_users boards
    @boards = current_user.boards
  end

  def todo_params
    params.require(:todo).permit(:text, :limit, :check, :list).merge(user_id: current_user.id)
  end
end
