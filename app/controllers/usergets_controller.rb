class UsergetsController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @usergets = @user.usergets.all.order(updated_at:'asc')
    @allusergets = Userget.all.order(updated_at:'asc')
  end

  def show
    @user = User.find(params[:user_id])
    @userget = @user.usergets.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @user.usergets.create(userget_params)
    redirect_to user_usergets_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @userget = @user.usergets.find(params[:id])
    @userget.destroy
    redirect_to user_usergets_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @userget = @user.usergets.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @userget = @user.usergets.find(params[:id])
    if @userget.update(userget_params)
      redirect_to user_userget_path(@user,@userget)
    else
      render 'edit'
    end
  end

  private
    def userget_params
      params.require(:userget).permit(:name, :txt, :yuu, :has)
    end

end
