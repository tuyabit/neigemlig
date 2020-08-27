class UsermalsController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @usermals = @user.usermals.all.order(updated_at:'asc')
  end

  def show
    @user = User.find(params[:user_id])
    @usermal = @user.usermals.find(params[:id])

    @malcounts = @usermal.malcounts.all.order(name1:'asc',created_at:'asc')

    @maxmalcounts = @usermal.malcounts.joins("RIGHT OUTER JOIN (select trim(name1) as name1,max(created_at) as created_at from malcounts group by trim(name1) order by created_at) as updateds on trim(malcounts.name1) = trim(updateds.name1) and malcounts.created_at = updateds.created_at ").select("trim(malcounts.name1) as name1,malcounts.created_at as created_at,malcounts.count")

    @malhens = Malhen.joins("LEFT OUTER JOIN malcounts ON malhens.malcount_id= malcounts.id ").select("trim(malhens.name1) as name1,malhens.count,trim(malcounts.name1) as name,malcounts.created_at as createddt").order(name1:'asc',name:'asc',createddt:'desc')


  end

  def create
    @user = User.find(params[:user_id])
    @user.usermals.create(usermal_params)
    redirect_to user_usermals_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @usermal = @user.usermals.find(params[:id])
    @usermal.destroy
    redirect_to user_usermals_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @usermal = @user.usermals.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @usermal = @user.usermals.find(params[:id])
    if @usermal.update(usermal_params)
      redirect_to user_usermal_path(@user,@usermal)
    else
      render 'edit'
    end
  end

  private
    def usermal_params
      params.require(:usermal).permit(:name1, :name2)
    end

end
