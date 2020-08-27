class MlqdfchatsController < ApplicationController

    def index
      @user = User.find(params[:user_id])
      @mlqdf = @user.mlqdfs.find(params[:id])
      @mlqdfchats = @mlqdf.mlqdfchats.all
    end

    def show
      @user = User.find(params[:user_id])
      @mlqdf = @user.mlqdfs.find(params[:mlqdf_id])
      @mlqdfchat = @mlqdf.mlqdfchats.find(params[:id])
    end

    def create
      @user = User.find(params[:user_id])
      @mlqdf = @user.mlqdfs.find(params[:mlqdf_id])
      @mlqdf.mlqdfchats.create(mlqdfchat_params)
      redirect_to user_mlqdf_path(@user,@mlqdf)
    end

    def edit
      @user = User.find(params[:user_id])
      @mlqdf = @user.mlqdfs.find(params[:mlqdf_id])
      @mlqdfchat = @mlqdf.mlqdfchats.find(params[:id])
    end

    def update
      @user = User.find(params[:user_id])
      @mlqdf = @user.mlqdfs.find(params[:mlqdf_id])
      @mlqdfchat = @mlqdf.mlqdfchats.find(params[:id])
      if @mlqdfchat.update(mlqdfchat_params)
        redirect_to user_mlqdf_path(@user,@mlqdf)
      else
        render 'edit'
      end
    end

    def destroy
      @user = User.find(params[:user_id])
      @mlqdf = @user.mlqdfs.find(params[:mlqdf_id])
      @mlqdfchat = @mlqdf.mlqdfchats.find(params[:id])
      @mlqdfchat.destroy
      redirect_to user_mlqdf_path(@user,@mlqdf)
    end

    private
      def mlqdfchat_params
        params.require(:mlqdfchat).permit(:text1, :from, :to)
      end
end
