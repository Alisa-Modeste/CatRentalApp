class CatsController < ApplicationController
  def index
    @cats = Cat.all

    render :index
  end

  def show
    @cat = Cat.find(params["id"])

    render :show
  end

  def create
    @new_cat = Cat.new(params[:cat])

    if @new_cat.save
      render :success_page
    else
      render @new_cat.errors, :status => :unprocessable_entity
    end
  end

  def update
  end
end
