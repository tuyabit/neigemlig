class UserjobpjhunsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:userjob_id])
    @userjobpj = @userjob.userjobpjs.find(params[:userjobpj_id])
    @userjobpj.userjobpjhuns.create(userjobpjhun_params)
    redirect_to user_userjob_path(@user,@userjob)
  end

  def destroy
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:userjob_id])
    @userjobpj = @userjob.userjobpjs.find(params[:userjobpj_id])
    @userjobpjhun = @userjobpj.userjobpjhuns.find(params[:id])
    @userjobpjhun.destroy
    redirect_to user_userjob_path(@user,@userjob)
  end

  def edit
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:userjob_id])
    @userjobpj = @userjob.userjobpjs.find(params[:userjobpj_id])
    @userjobpjhun = @userjobpj.userjobpjhuns.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:userjob_id])
    @userjobpj = @userjob.userjobpjs.find(params[:userjobpj_id])
    @userjobpjhun = @userjobpj.userjobpjhuns.find(params[:id])
    if @userjobpjhun.update(userjobpjhun_params)
      redirect_to user_userjob_path(@user,@userjob)
    else
      render 'edit'
    end
  end

  private
    def userjobpjhun_params
      params.require(:userjobpjhun).permit(:hname, :hfrom, :hcount, :hune, :hunit, :hstartdate, :henddate)
    end

end
