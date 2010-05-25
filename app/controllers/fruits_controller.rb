class FruitsController < ApplicationController

  def index
    @fruits = Fruit.all
  end

  def show
    @fruit = Fruit.find(params[:id])
  end

  def new
    @fruit = Fruit.new
  end

  def create
    @fruit = Fruit.new(params[:fruit])

    if @fruit.save
      flash[:notice] = "Fruit was successfully created."
      redirect_to(@fruit)
    else
      render :action => "new"
    end
  end

end
