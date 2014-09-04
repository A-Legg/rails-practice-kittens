class KittensController < ApplicationController



  def index

    @kittens = Kitten.all

  end

  def edit
    @kitten = Kitten.find(params[:id])

    @categories = Category.order(:name)
  end

  def update

    @kitten = Kitten.find(params[:id])








    redirect_to :back
  end


end