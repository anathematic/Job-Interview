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
      redirect_to(@fruit, :notice => 'Fruit was successfully created.')
    else
      render :action => "new"
    end
  end

end
