class FruitsController < ApplicationController
  # GET /fruits
  # GET /fruits.xml
  def index
    @fruits = Fruit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fruits }
    end
  end

  # GET /fruits/1
  # GET /fruits/1.xml
  def show
    @fruit = Fruit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fruit }
    end
  end

  # GET /fruits/new
  # GET /fruits/new.xml
  def new
    @fruit = Fruit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fruit }
    end
  end

  # GET /fruits/1/edit
  def edit
    @fruit = Fruit.find(params[:id])
  end

  # POST /fruits
  # POST /fruits.xml
  def create
    @fruit = Fruit.new(params[:fruit])

    respond_to do |format|
      if @fruit.save
        format.html { redirect_to(@fruit, :notice => 'Fruit was successfully created.') }
        format.xml  { render :xml => @fruit, :status => :created, :location => @fruit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fruit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fruits/1
  # PUT /fruits/1.xml
  def update
    @fruit = Fruit.find(params[:id])

    respond_to do |format|
      if @fruit.update_attributes(params[:fruit])
        format.html { redirect_to(@fruit, :notice => 'Fruit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fruit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fruits/1
  # DELETE /fruits/1.xml
  def destroy
    @fruit = Fruit.find(params[:id])
    @fruit.destroy

    respond_to do |format|
      format.html { redirect_to(fruits_url) }
      format.xml  { head :ok }
    end
  end
end
