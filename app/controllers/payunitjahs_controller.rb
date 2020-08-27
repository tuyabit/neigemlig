class PayunitjahsController < ApplicationController

  def create
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @payunit = @mott.payunits.find(params[:payunit_id])
    @payunit.payunitjahs.create(payunitjah_params)
    redirect_to motd_path(@motd)
  end

  def destroy
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @payunit = @mott.payunits.find(params[:payunit_id])
    @payunitjah = @payunit.payunitjahs.find(params[:id])
    @payunitjah.destroy
    redirect_to motd_path(@motd)
  end

  def edit
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @payunit = @mott.payunits.find(params[:payunit_id])
    @payunitjah = @payunit.payunitjahs.find(params[:id])
  end

  def update
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @payunit = @mott.payunits.find(params[:payunit_id])
    @payunitjah = @payunit.payunitjahs.find(params[:id])
    if @payunitjah.update(payunitjah_params)
      redirect_to motd_path(@motd)
    else
      render 'edit'
    end
  end

  private
    def payunitjah_params
      params.require(:payunitjah).permit(:jname, :jf4, :jf5, :jf6, :jf7, :jff6, :jff7, :f8, :f9, :f10, :count, :userid, :uname)
    end

end
