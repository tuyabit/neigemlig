class UserjobsController < ApplicationController

  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
      @userjobs = @user.userjobs.all.order(updated_at:'asc')
      @mymlqdbs = @user.mlqdbs.all.order(a9:'desc')
      @userjobpjhunjahs = Userjobpjhunjah.joins("LEFT OUTER JOIN userjobpjhuns ON userjobpjhunjahs.userjobpjhun_id=userjobpjhuns.id LEFT OUTER JOIN userjobpjs ON userjobpjhuns.userjobpj_id=userjobpjs.id LEFT OUTER JOIN userjobs ON userjobpjs.userjob_id=userjobs.id ").select("userjobpjhunjahs.*,userjobpjhuns.hname,userjobpjhuns.hstartdate,userjobpjhuns.henddate,userjobpjs.name as pjname,userjobs.name,userjobpjs.userjob_id,userjobs.user_id").where(userid: @user.id).order(henddate:'asc')
    end
    @alljobs = Userjob.all.order(updated_at:'asc')

    @allmlqdbs = Mlqdb.all.order(a9:'desc')

  end

  def show
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:id])
    @f10userpays = Userpay.where(userid: @user.id).order(updated_at:'asc')

    @adminuser = User.find(1)

    if session[:user_id]
      @myuser = User.find(session[:user_id])
      @mymlqdbs = @myuser.mlqdbs.all.order(a9:'desc')
    end
    @jobmlqdbs = @user.mlqdbs.all.order(a9:'desc')

  end

  def create
    @user = User.find(params[:user_id])
    @user.userjobs.create(userjob_params)
    redirect_to user_userjobs_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:id])
    @userjob.destroy
    redirect_to user_userjobs_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:id])
    if @userjob.update(userjob_params)
      redirect_to user_userjob_path(@user,@userjob)
    else
      render 'edit'
    end
  end

  private
    def userjob_params
      params.require(:userjob).permit(:name, :job, :from, :skil, :picture, :f4, :f5, :unit, :daynum, :f6, :f7, :ff6, :ff7, :f8, :f9, :ff8, :ff9, :f10, :other)
    end

end
