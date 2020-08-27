class UserimagesController < ApplicationController

  # def new
  #   @userimage = Userimage.new
  #   @userimage.name = "hogehoge"
  # end
  #
  # def create
  #   @userimage = Userimage.new(userimage_params)
  #   @userimage.name = params[:image][:picture].original_filename
  #   @userimage.picture = params[:image][:picture].read
  #
  #   if @userimage.save
  #     redirect_to user_path(@user)
  #   else
  #     render 'new'
  #   end
  # end

  def create
    @user = User.find(params[:user_id])
    @user.userimages.create(userimage_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @userimage = @user.userimages.find(params[:id])
    @userimage.destroy
    redirect_to user_path(@user)
  end


  def edit
    @user = User.find(params[:user_id])
    @userimage = @user.userimages.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @userimage = @user.userimages.find(params[:id])
    if @userimage.update(userimage_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private
    def userimage_params
      params.require(:userimage).permit(:name, :picture)
    end


end
