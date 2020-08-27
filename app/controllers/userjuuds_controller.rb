class UserjuudsController < ApplicationController

  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
      @userjuuds = @user.userjuuds.all.order(updated_at:'asc')
      @userjuudjdls = @user.userjuudjdls.all.order(updated_at:'asc')
    end

    @alljuuds = Userjuud.all.order(updated_at:'asc')
    @adminuser = User.find(1)

  end

  def show
    @user = User.find(params[:user_id])
    @userjuud = @user.userjuuds.find(params[:id])

    if session[:user_id]
      @loginuser = User.find(session[:user_id])
    end

    @alluserjuudjdls = Userjuudjdl.where(jname:@userjuud.name).order(updated_at:'asc')

  end

  def create
    @user = User.find(params[:user_id])
    @user.userjuuds.create(userjuud_params)
    redirect_to user_userjuuds_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @userjuud = @user.userjuuds.find(params[:id])
    @userjuud.destroy
    redirect_to user_userjuuds_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @userjuud = @user.userjuuds.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @userjuud = @user.userjuuds.find(params[:id])
    if @userjuud.update(userjuud_params)
      redirect_to user_userjuud_path(@user,@userjuud)
    else
      render 'edit'
    end
  end

  private
    def userjuud_params
      params.require(:userjuud).permit(:yuu, :rotate, :name, :txt, :juuddt, :uname, :userid, :yamar, :yaah, :ymrdt, :une, :unit)
    end

end
