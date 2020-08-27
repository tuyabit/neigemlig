class MalcountsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @usermal = @user.usermals.find(params[:usermal_id])
    @usermal.malcounts.create(malcount_params)
    redirect_to user_usermal_path(@user,@usermal)
  end

  def destroy
    @user = User.find(params[:user_id])
    @usermal = @user.usermals.find(params[:usermal_id])
    @malcount = @usermal.malcounts.find(params[:id])
    @malcount.destroy
    redirect_to user_usermal_path(@user,@usermal)
  end

  def edit
    @user = User.find(params[:user_id])
    @usermal = @user.usermals.find(params[:usermal_id])
    @malcount = @usermal.malcounts.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @usermal = @user.usermals.find(params[:usermal_id])
    @malcount = @usermal.malcounts.find(params[:id])
    if @malcount.update(malcount_params)
      redirect_to user_usermal_path(@user,@usermal)
    else
      render 'edit'
    end
  end

  private
    def malcount_params
      params.require(:malcount).permit(:name1, :name2, :count, :countdt,:name3, :name4,:name5, :name6, :name7, :name8, :name9, :name10, :name11, :name12, :name13, :name14, :name15, :name16, :name17, :name18, :name19, :name20,:count1, :count2, :count3, :count4, :count5, :count6, :count7, :count8, :count9, :count10, :count11, :count12, :count13, :count14, :count15, :count16, :count17, :count18, :count19, :count20, :ohter, :type)
    end

end
