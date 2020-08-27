class UserjobpjhunjahsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:userjob_id])
    @userjobpj = @userjob.userjobpjs.find(params[:userjobpj_id])
    @userjobpjhun = @userjobpj.userjobpjhuns.find(params[:userjobpjhun_id])
    @userjobpjhun.userjobpjhunjahs.create(userjobpjhunjah_params)
    redirect_to user_userjob_path(@user,@userjob)
  end

  def destroy
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:userjob_id])
    @userjobpj = @userjob.userjobpjs.find(params[:userjobpj_id])
    @userjobpjhun = @userjobpj.userjobpjhuns.find(params[:userjobpjhun_id])
    @userjobpjhunjah = @userjobpjhun.userjobpjhunjahs.find(params[:id])
    @userjobpjhunjah.destroy
    redirect_to user_userjob_path(@user,@userjob)
  end

  def edit
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:userjob_id])
    @userjobpj = @userjob.userjobpjs.find(params[:userjobpj_id])
    @userjobpjhun = @userjobpj.userjobpjhuns.find(params[:userjobpjhun_id])
    @userjobpjhunjah = @userjobpjhun.userjobpjhunjahs.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @userjob = @user.userjobs.find(params[:userjob_id])
    @userjobpj = @userjob.userjobpjs.find(params[:userjobpj_id])
    @userjobpjhun = @userjobpj.userjobpjhuns.find(params[:userjobpjhun_id])
    @userjobpjhunjah = @userjobpjhun.userjobpjhunjahs.find(params[:id])
    if @userjobpjhunjah.update(userjobpjhunjah_params)
      redirect_to user_userjob_path(@user,@userjob)
    else
      render 'edit'
    end
  end

  private
    def userjobpjhunjah_params
      params.require(:userjobpjhunjah).permit(:jname, :jfrom, :june, :junit, :jstartdate, :jenddate, :userid, :uname, :jahdt, :mddt, :get1dt)
    end


end
