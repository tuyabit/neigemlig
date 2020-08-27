class UseraddsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user.useradds.create(useradd_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @useradd = @user.useradds.find(params[:id])
    @useradd.destroy
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @useradd = @user.useradds.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @useradd = @user.useradds.find(params[:id])
    if @useradd.update(useradd_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private
    def useradd_params
      params.require(:useradd).permit(:name,:tel,:pcode,:add,:ulus,:hot,:jeel,:gdumj,:uud,:picture,:f6,:f7,:f10)
    end

end
