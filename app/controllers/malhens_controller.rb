class MalhensController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @usermal = @user.usermals.find(params[:usermal_id])
    @malcount = @usermal.malcounts.find(params[:malcount_id])
    @malhens = @malcount.malhens.order(updated_at:'asc')
  end


  def create
    @user = User.find(params[:user_id])
    @usermal = @user.usermals.find(params[:usermal_id])
    @malcount = @usermal.malcounts.find(params[:malcount_id])
    @malcount.malhens.create(malhen_params)
    redirect_to user_usermal_malcount_malhens_path(@user,@usermal,@malcount)
  end

  def destroy
    @user = User.find(params[:user_id])
    @usermal = @user.usermals.find(params[:usermal_id])
    @malcount = @usermal.malcounts.find(params[:malcount_id])
    @malhen = @malcount.malhens.find(params[:id])
    @malhen.destroy
    redirect_to user_usermal_malcount_malhens_path(@user,@usermal,@malcount)
  end

  def edit
    @user = User.find(params[:user_id])
    @usermal = @user.usermals.find(params[:usermal_id])
    @malcount = @usermal.malcounts.find(params[:malcount_id])
    @malhen = @malcount.malhens.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @usermal = @user.usermals.find(params[:usermal_id])
    @malcount = @usermal.malcounts.find(params[:malcount_id])
    @malhen = @malcount.malhens.find(params[:id])
    if @malhen.update(malhen_params)
      redirect_to user_usermal_malcount_malhens_path(@user,@usermal,@malcount)
    else
      render 'edit'
    end
  end

  private
    def malhen_params
      params.require(:malhen).permit(:name1, :name2, :count, :countdt)
    end

end
