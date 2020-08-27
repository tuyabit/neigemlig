
class MottsController < ApplicationController

    def index
      @motd = Motd.find(params[:motd_id])
      # @user =User.find(session[:user_id])
      @motts = @motd.motts.order(updated_at:'desc')
      # @motts = Mott.all.order(created_at:'desc')
    end

    def show
      @motd = Motd.joins("LEFT OUTER JOIN users ON users.id = motds.f3 ").select("motds.*,users.nickname").find(params[:motd_id])
      @mott = @motd.motts.find(params[:id])
      # @mott = Mott.find(params[:id])

      @comments = @mott.comments.all.order(updated_at:'desc')
      @mottimages = @mott.mottimages.all.order(updated_at:'desc')

      @pictures = @mottimages.where("mottimages.picture IS NOT NULL AND mottimages.video IS NULL AND mottimages.audio IS NULL ").select("count(mottimages.id) as cnt")
      @videos = @mottimages.where("mottimages.video IS NOT NULL").select("count(mottimages.id) as cnt")
      @audios = @mottimages.where("mottimages.audio IS NOT NULL").select("count(mottimages.id) as cnt")

      @user = User.find(@motd.f3)
      @usermlqdbs = @user.mlqdbs.all.order(a9:'desc')

      @userangaars = Userangaar.where(user_id: 1).order(created_at:'asc')
      @adminuser = User.find(1)

      if session[:user_id]
        @myuser = User.find(session[:user_id])
        @mymlqdbs = @myuser.mlqdbs.all.order(a9:'desc')
        @motdf3mlqdbs = @user.mlqdbs.all.order(a9:'desc')
      end
      @jobmlqdbs = @user.mlqdbs.all.order(a9:'desc')

      @userpays = Userpay.all.order(updated_at:'asc')

    end

    def destroy
      # @mott = Mott.find(params[:id])
      @motd = Motd.find(params[:motd_id])
      @mott = @motd.motts.find(params[:id])
      @mott.destroy
      redirect_to motd_path(@motd)
    end

    def edit
      # @mott = Mott.find(params[:id])
      @motd = Motd.find(params[:motd_id])
      @mott = @motd.motts.find(params[:id])

      @userangaars = Userangaar.where(user_id: 1).order(created_at:'asc')

    end

    def update
      # @mott = Mott.find(params[:id])
      @motd = Motd.find(params[:motd_id])
      @mott = @motd.motts.find(params[:id])

      if @mott.update(mott_params)
        redirect_to motd_mott_path(@motd,@mott)
      else
        @userangaars = Userangaar.where(user_id: 1).order(created_at:'asc')
        render 'edit'
      end
    end

    def new
      @motd = Motd.find(params[:motd_id])
      @mott = @motd.motts.new
      # @mott = Mott.new
      @userangaars = Userangaar.where(user_id: 1).order(created_at:'asc')

    end

    def create
      # @mott = Mott.new(mott_params)
      @motd = Motd.find(params[:motd_id])
      @mott = @motd.motts.create(mott_params)
      if @mott.save
        redirect_to motd_path(@motd)
      else
        @userangaars = Userangaar.where(user_id: 1).order(created_at:'asc')
        render 'new'
      end
    end

    def mott_params
      params.require(:mott).permit(:f1, :f2, :f3, :f4, :f5, :f10, :moa, :mob, :f6, :f7,:Motdid,:Mdid)
    end

end
