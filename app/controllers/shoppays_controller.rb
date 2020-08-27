class ShoppaysController < ApplicationController

  def index
      @shoppays = Shoppay.all.order(updated_at:'asc')
  end

  def show
    @shoppay = Shoppay.find(params[:id])
  end

  def new
    @shoppay = Shoppay.new
  end

  def create
    @shoppay = Shoppay.new(shoppay_params)
    if @shoppay.save
      redirect_to user_path(params[:touserid])
    else
      render 'new'
    end

  end

  # def create
  #   Shoppay.create(shoppay_params)
  #   redirect_to shoppays_path
  # end

  def destroy
    @shoppay = Shoppay.find(params[:id])
    @shoppay.destroy
    redirect_to shoppays_path
  end

  def edit
    @shoppay = Shoppay.find(params[:id])
  end

  def update
    @shoppay = Shoppay.find(params[:id])
    if @shoppay.update(shoppay_params)
      redirect_to shoppays_path
    else
      render 'edit'
    end
  end

  def shoppay_params
    params.require(:shoppay).permit(:fromuserid, :fromusername, :touserid, :tousername, :name, :unit, :picture, :f4, :f5, :f6, :f7, :f8, :f9, :f10, :memo1, :memo2, :f11, :f12)
  end

end
