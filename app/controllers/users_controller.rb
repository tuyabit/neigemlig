class UsersController < ApplicationController
  def index
    @users = User.all.order(created_at:'desc')

    if session[:user_id]
      @user = User.find(session[:user_id])
      @usermotds = Motd.where(f3: session[:user_id]).order(updated_at:'desc')
      @usershops = @user.usershops.all.order(created_at:'desc')
    else
      @usermotds = Motd.all.order(mda:'asc',updated_at:'asc')
    end

    @allmotds = Motd.all.order(mda:'asc',updated_at:'asc')
  end

  def show
    @user = User.find(params[:id])
    @usermotds = Motd.all.order(updated_at:'asc')
    @shoppays = Shoppay.all.order(updated_at:'asc')

    @motds = Motd.where(f3: @user.id).order(updated_at:'asc')

    @users = User.all.order(created_at:'desc')

    @usergers = Userger.joins("LEFT OUTER JOIN users ON usergers.user_id=users.id ").where(userid: @user.id).select("usergers.*,users.nickname,users.sex").order(sex:'desc')

    @adminuser = User.find(1)
    @adminuserpays = Userpay.where(user_id:1,f10:'site').order(userid:'asc',unit:'asc',created_at:'asc')

    if session[:user_id]
      @myuser = User.find(session[:user_id])
      # @userpays = Userpay.all.order(created_at:'asc')
      @userpays = Userpay.joins("LEFT OUTER JOIN users ON userpays.user_id=users.id ").select("userpays.*,users.nickname,users.sex").order(created_at:'asc')
      @mlqdbs= @user.mlqdbs.all
    end

  end

  def new
    @user = User.new
  end

  def create
    session[:user_id] = nil
    session[:user_fname] = nil
    session[:user_funame] = nil

    @user = User.new(user_params) #user_paramsはPOSTデータをチェックするメソッド

    if @user.save
      # redirect_to @user
      redirect_to login_path
    else
      render 'new'
    end

  end

  def edit
    @user = User.find(params[:id])

    @users = User.all.order(created_at:'desc')

  end

  def update
    @user = User.find(params[:id])

    #編集しようとしてるユーザーがログインユーザーとイコールかをチェック
    # if session[:user_id] = @user.id

      if @user.update(user_params)
        session[:user_id] = @user.id
        session[:user_fname] = @user.fname
        session[:user_funame] = @user.nickname
        redirect_to @user
      else
        render 'edit'
      end

    # else
    #   redirect_to login_path
    # end

  end

  def removeImage
    @user.remove_image
    @user.save
    redirect_to @user
  end

  private

  #ストロングパラメーター
  def user_params
    params.require(:user).permit(:nickname, :email, :password, :password_confirmation, :image, :introduce, :age, :sex, :address, :fname)
  end

end
