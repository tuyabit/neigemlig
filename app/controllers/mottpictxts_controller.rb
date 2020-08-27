class MottpictxtsController < ApplicationController

    def create
      @motd = Motd.find(params[:motd_id])
      @mott = @motd.motts.find(params[:mott_id])
      @mottimage = @mott.mottimages.find(params[:mottimage_id])
      @mottimage.mottpictxts.create(mottpictxt_params)
      redirect_to motd_mott_path(@motd,@mott)
    end

    def destroy
      @motd = Motd.find(params[:motd_id])
      @mott = @motd.motts.find(params[:mott_id])
      @mottimage = @mott.mottimages.find(params[:mottimage_id])
      @mottpictxt = @mottimage.mottpictxts.find(params[:id])
      @mottpictxt.destroy
      redirect_to motd_mott_path(@motd,@mott)
    end

    def edit
      @motd = Motd.find(params[:motd_id])
      @mott = @motd.motts.find(params[:mott_id])
      @mottimage = @mott.mottimages.find(params[:mottimage_id])
      @mottpictxt = @mottimage.mottpictxts.find(params[:id])
    end

    def update
      @motd = Motd.find(params[:motd_id])
      @mott = @motd.motts.find(params[:mott_id])
      @mottimage = @mott.mottimages.find(params[:mottimage_id])
      @mottpictxt = @mottimage.mottpictxts.find(params[:id])
      if @mottpictxt.update(mottpictxt_params)
        redirect_to motd_mott_path(@motd,@mott)
      else
        render 'edit'
      end
    end

    private
      def mottpictxt_params
        params.require(:mottpictxt).permit(:picga, :picba, :picda)
      end

end
