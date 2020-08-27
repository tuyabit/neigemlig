class CommotdsController < ApplicationController
  def create
    @motd = Motd.find(params[:motd_id])
    @motd.commotds.create(commotd_params)
    redirect_to motd_path(@motd)
  end

  def destroy
    @motd = Motd.find(params[:motd_id])
    @commotd = @motd.commotds.find(params[:id])
    @commotd.destroy
    redirect_to motd_path(@motd)
  end

  def edit
    @motd = Motd.find(params[:motd_id])
    @commotd = @motd.commotds.find(params[:id])
    
    @userangaars = Userangaar.where(user_id: 1).order(updated_at:'asc')

  end

  def update
    @motd = Motd.find(params[:motd_id])
    @commotd = @motd.commotds.find(params[:id])
    if @commotd.update(commotd_params)
      redirect_to motd_path(@motd)
    else
      render 'edit'
    end
  end

  private
    def commotd_params
      params.require(:commotd).permit(:td)
    end
end
