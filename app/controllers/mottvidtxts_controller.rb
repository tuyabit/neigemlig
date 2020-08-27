class MottvidtxtsController < ApplicationController

      def create
        @motd = Motd.find(params[:motd_id])
        @mott = @motd.motts.find(params[:mott_id])
        @mottimage = @mott.mottimages.find(params[:mottimage_id])
        @mottimage.mottvidtxts.create(mottvidtxt_params)
        redirect_to motd_mott_path(@motd,@mott)
      end

      def destroy
        @motd = Motd.find(params[:motd_id])
        @mott = @motd.motts.find(params[:mott_id])
        @mottimage = @mott.mottimages.find(params[:mottimage_id])
        @mottvidtxt = @mottimage.mottvidtxts.find(params[:id])
        @mottvidtxt.destroy
        redirect_to motd_mott_path(@motd,@mott)
      end

      def edit
        @motd = Motd.find(params[:motd_id])
        @mott = @motd.motts.find(params[:mott_id])
        @mottimage = @mott.mottimages.find(params[:mottimage_id])
        @mottvidtxt = @mottimage.mottvidtxts.find(params[:id])
      end

      def update
        @motd = Motd.find(params[:motd_id])
        @mott = @motd.motts.find(params[:mott_id])
        @mottimage = @mott.mottimages.find(params[:mottimage_id])
        @mottvidtxt = @mottimage.mottvidtxts.find(params[:id])
        if @mottvidtxt.update(mottvidtxt_params)
          redirect_to motd_mott_path(@motd,@mott)
        else
          render 'edit'
        end
      end

      private
        def mottvidtxt_params
          params.require(:mottvidtxt).permit(:ga, :ba, :da)
        end

end
