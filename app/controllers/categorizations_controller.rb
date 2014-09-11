class CategorizationsController < ApplicationController

  def new
    @categorization = Categorization.new
    @kitten = Kitten.find(params[:kitten_id])
    @categories = Category.order(:name)
  end

  def create
    @categorization = Categorization.new(
      kitten_id: params[:kitten_id],
      category_id: params[:categorization][:category_id]
    )
    @categorization.save
    redirect_to root_path
  end




end