class CommentsController < ApplicationController

  def create
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @mott.comments.create(comment_params)
    redirect_to motd_mott_path(@motd,@mott)
  end

  def destroy
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @comment = @mott.comments.find(params[:id])
    @comment.destroy
    redirect_to motd_mott_path(@motd,@mott)
  end

  def edit
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @comment = @mott.comments.find(params[:id])

    @userangaars = Userangaar.where(user_id: 1).order(updated_at:'asc')

  end

  def update
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @comment = @mott.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to motd_mott_path(@motd,@mott)
    else
      render 'edit'
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:tt, :tta, :ttb)
    end

end
