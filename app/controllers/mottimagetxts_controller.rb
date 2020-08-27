class MottimagetxtsController < ApplicationController

  def create
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @mottimage = @mott.mottimages.find(params[:mottimage_id])
    @mottimage.mottimagetxts.create(mottimagetxt_params)
    redirect_to motd_mott_path(@motd,@mott)
  end

  def destroy
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @mottimage = @mott.mottimages.find(params[:mottimage_id])
    @mottimagetxt = @mottimage.mottimagetxts.find(params[:id])
    @mottimagetxt.destroy
    redirect_to motd_mott_path(@motd,@mott)
  end

  def edit
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @mottimage = @mott.mottimages.find(params[:mottimage_id])
    @mottimagetxt = @mottimage.mottimagetxts.find(params[:id])
  end

  def update
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @mottimage = @mott.mottimages.find(params[:mottimage_id])
    @mottimagetxt = @mottimage.mottimagetxts.find(params[:id])
    if @mottimagetxt.update(mottimagetxt_params)
      redirect_to motd_mott_path(@motd,@mott)
    else
      render 'edit'
    end
  end

  private
    def mottimagetxt_params
      params.require(:mottimagetxt).permit(:picga, :picba, :picda, :viddga, :vidba, :vidda, :adiddga, :adiba, :adida)
    end

end
