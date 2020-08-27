class PayunitsController < ApplicationController

  def create
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @mott.payunits.create(payunit_params)
    redirect_to motd_path(@motd)
  end

  def destroy
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @payunit = @mott.payunits.find(params[:id])
    @payunit.destroy
    redirect_to motd_path(@motd)
  end

  def edit
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @payunit = @mott.payunits.find(params[:id])
  end

  def update
    @motd = Motd.find(params[:motd_id])
    @mott = @motd.motts.find(params[:mott_id])
    @payunit = @mott.payunits.find(params[:id])
    if @payunit.update(payunit_params)
      redirect_to motd_path(@motd)
    else
      render 'edit'
    end
  end

  private
    def payunit_params
      params.require(:payunit).permit(:name, :f4, :f5, :f6, :f7, :ff6, :ff7, :f8, :f9, :f10)
    end

end
