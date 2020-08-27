class UserangaarsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user.userangaars.create(userangaar_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @userangaar = @user.userangaars.find(params[:id])
    @userangaar.destroy
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @userangaar = @user.userangaars.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @userangaar = @user.userangaars.find(params[:id])
    if @userangaar.update(userangaar_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private
    def userangaar_params
      params.require(:userangaar).permit(:name, :picture)
    end

end
