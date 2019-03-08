class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end
  
  def new
    @card = Card.new
  end

  def create
    @card = Card.new(cards_params)

    if @card.save
      redirect_to cards_path
    else
      render :new
    end
  end

  def update
    @card = Card.find(params[:id])
  
    if @card.update(card_params)
      redirect_to cards_path
    else
      render :edit
    end
  end

  def edit
    @card = Card.find(params[:id])
  end

  def destroy
    Card.find(params[:id]).destroy
    redirect_to cards_path
  end

  private

  def cards_params
    params.require(:card).permit(:title, :description, :comment)
  end

end
