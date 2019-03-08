class BoardsController < ApplicationController

  def create
    @board = @user.boards.new(board_params)
    if @board.save
      redirect_to 
    else
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  def new
  end

  def update
  end

  def destroy
  end
end
