class MottimagesController < ApplicationController

  def create
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @mott.mottimages.create(mottimage_params)
    redirect_to motd_mott_path(@motd,@mott)
  end

  def destroy
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @mottimage = @mott.mottimages.find(params[:id])
    @mottimage.destroy
    redirect_to motd_mott_path(@motd,@mott)
  end

  def edit
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @mottimage = @mott.mottimages.find(params[:id])

    @userangaars = Userangaar.where(user_id: 1).order(updated_at:'asc')

  end

  def update
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @mottimage = @mott.mottimages.find(params[:id])
    if @mottimage.update(mottimage_params)
      redirect_to motd_mott_path(@motd,@mott)
    else
      render 'edit'
    end
  end

  private
    def mottimage_params
      params.require(:mottimage).permit(:name, :picture, :tta, :ttb, :video, :audio, :timage, :tvideo, :taudio,:rotate,:picrotate,:avideo,:aaudio)
    end

end
