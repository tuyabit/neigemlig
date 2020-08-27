class MotdsController < ApplicationController

    def index

        @usermdegdels =  Usermdegdel.all.order(created_at:'asc')


        if session[:user_id]
          @user = User.find(session[:user_id])
          @mymlqdbs = @user.mlqdbs.all.order(a9:'desc')
          @inmails = Mail.joins("LEFT OUTER JOIN users ON users.id = mails.f3 ").where(a1: @user.email.downcase).select("mails.*,users.nickname").order(updated_at:'desc')
          @inrmails = Rmail.joins("LEFT OUTER JOIN users ON users.id = rmails.ff3 LEFT OUTER JOIN mails ON mails.id = rmails.mail_id ").where(aa1: @user.email.downcase).select("rmails.*,users.nickname").order(updated_at:'desc')

          # @userjobs = Userjob.all.order(updated_at:'desc')
        end
        @usermotds = Motd.where(f3: session[:user_id]).order(updated_at:'desc')
        @mlqdbs = Mlqdb.joins("LEFT OUTER JOIN users ON mlqdbs.user_id=users.id ").select("mlqdbs.*,users.nickname").order(a9:'desc')
        @userjobs = Userjob.joins("LEFT OUTER JOIN mlqdbs ON userjobs.user_id=mlqdbs.user_id ").select("userjobs.*,mlqdbs.a1,mlqdbs.f1,mlqdbs.a2,mlqdbs.a9,mlqdbs.f9").order(updated_at:'desc')


        # @motds = Motd.joins("LEFT OUTER JOIN 'users' ON 'users'.'id' = 'motds'.'f3' ").select("motds.*,users.nickname").order(updated_at:'desc')
        # @mottimages = Mottimage.joins("LEFT OUTER JOIN 'motts' ON 'motts'.'id' = 'mottimages'.'mott_id' LEFT OUTER JOIN 'motds' ON 'motds'.'id' = 'motts'.'motd_id'").select("mottimages.*,MAX(mottimages.updated_at),motts.motd_id,motts.f1").group("motd_id,motts.f1").order(updated_at:'desc')
        # @comments = Comment.joins("LEFT OUTER JOIN 'motts' ON 'motts'.'id' = 'comments'.'mott_id' LEFT OUTER JOIN 'motds' ON 'motds'.'id' = 'motts'.'motd_id' WHERE 'motts'.'motd_id' IS NOT NULL").select("comments.*,MAX(comments.updated_at),motts.motd_id,motts.f1").group("motd_id,motts.f1").order(updated_at:'desc')

        # MYSQL対応
        @motds = Motd.joins("LEFT OUTER JOIN users ON users.id = motds.f3 ").select("motds.*,users.nickname").order(mda:'asc',updated_at:'asc')

        # @images = Mottimage.joins("right outer join (select mott_id,max(id) as id from mottimages  WHERE mottimages.picture is not null AND video is null AND audio is null group by mott_id order by id desc) as maximg on mottimages.mott_id=maximg.mott_id and mottimages.id= maximg.id ").select("mottimages.*").order(updated_at:'desc')
        # @mottimages =  @images.joins("LEFT OUTER JOIN motts ON  mottimages.mott_id = motts.id WHERE motts.f6<=SYSDATE() and motts.f7>=SYSDATE()").select("mottimages.*,motts.motd_id,motts.mob,motts.f1")
        @mottimages =  Mottimage.joins("LEFT OUTER JOIN motts ON  mottimages.mott_id = motts.id LEFT OUTER JOIN motds ON motts.motd_id=motds.id WHERE mottimages.picture is not null AND video is null AND audio is null AND motts.Mdid is not null ").select("mottimages.*,motts.motd_id,motts.mob,motts.f7 as mtf7,motts.f1 as f1,motds.f1 as f1d").order(updated_at:'desc')

        # @videos = Mottimage.joins("right outer join (select mott_id,max(id) as id from mottimages  WHERE mottimages.video is not null group by mott_id order by id desc) as maximg on mottimages.mott_id=maximg.mott_id and mottimages.id= maximg.id ").select("mottimages.*").order(updated_at:'desc')
        # @mottvideos =  @videos.joins("LEFT OUTER JOIN motts ON  mottimages.mott_id = motts.id WHERE motts.f6<=SYSDATE() and motts.f7>=SYSDATE()").select("mottimages.*,motts.motd_id,motts.mob,motts.f1")
        @mottvideos =  Mottimage.joins("LEFT OUTER JOIN motts ON  mottimages.mott_id = motts.id LEFT OUTER JOIN motds ON motts.motd_id=motds.id WHERE mottimages.video is not null AND (avideo=0 or avideo is null) AND motts.Mdid is not null").select("mottimages.*,motts.motd_id,motts.mob,motts.f1 as f1,motds.f1 as f1d").order(updated_at:'desc')
        @mottvideos1 =  Mottimage.joins("LEFT OUTER JOIN motts ON  mottimages.mott_id = motts.id LEFT OUTER JOIN motds ON motts.motd_id=motds.id WHERE mottimages.video is not null AND avideo=1 AND motts.Mdid is not null").select("mottimages.*,motts.motd_id,motts.mob,motts.f1 as f1,motds.f1 as f1d").order(updated_at:'desc')
        @mottvideos2 =  Mottimage.joins("LEFT OUTER JOIN motts ON  mottimages.mott_id = motts.id LEFT OUTER JOIN motds ON motts.motd_id=motds.id WHERE mottimages.video is not null AND avideo=2 AND motts.Mdid is not null").select("mottimages.*,motts.motd_id,motts.mob,motts.f1 as f1,motds.f1 as f1d").order(updated_at:'desc')

        # @audios = Mottimage.joins("right outer join (select mott_id,max(id) as id from mottimages  WHERE mottimages.audio is not null group by mott_id order by id desc) as maximg on mottimages.mott_id=maximg.mott_id and mottimages.id= maximg.id ").select("mottimages.*").order(updated_at:'desc')
        # @mottaudios =  @audios.joins("LEFT OUTER JOIN motts ON  mottimages.mott_id = motts.id WHERE motts.f6<=SYSDATE() and motts.f7>=SYSDATE()").select("mottimages.*,motts.motd_id,motts.mob,motts.f1")
        @mottaudios =  Mottimage.joins("LEFT OUTER JOIN motts ON  mottimages.mott_id = motts.id LEFT OUTER JOIN motds ON motts.motd_id=motds.id WHERE mottimages.audio is not null AND (aaudio=0 or aaudio is null) AND motts.Mdid is not null").select("mottimages.*,motts.motd_id,motts.mob,motts.f1 as f1,motds.f1 as f1d").order(updated_at:'desc')
        @mottaudios1 =  Mottimage.joins("LEFT OUTER JOIN motts ON  mottimages.mott_id = motts.id LEFT OUTER JOIN motds ON motts.motd_id=motds.id WHERE mottimages.audio is not null AND aaudio=1 AND motts.Mdid is not null").select("mottimages.*,motts.motd_id,motts.mob,motts.f1 as f1,motds.f1 as f1d").order(updated_at:'desc')
        @mottaudios2 =  Mottimage.joins("LEFT OUTER JOIN motts ON  mottimages.mott_id = motts.id LEFT OUTER JOIN motds ON motts.motd_id=motds.id WHERE mottimages.audio is not null AND aaudio=2 AND motts.Mdid is not null").select("mottimages.*,motts.motd_id,motts.mob,motts.f1 as f1,motds.f1 as f1d").order(updated_at:'desc')

        @maxcoms = Comment.joins("right outer join (select mott_id,max(id) as id from comments group by mott_id order by id desc) as maxcom on comments.mott_id=maxcom.mott_id and comments.id= maxcom.id ").select("comments.*").order(updated_at:'desc')
        @comments = @maxcoms.joins("LEFT OUTER JOIN motts ON  comments.mott_id = motts.id LEFT OUTER JOIN motds ON motts.motd_id = motds.id WHERE motts.f6<=SYSDATE() and motts.f7>=SYSDATE() AND motts.Mdid is not null AND motts.f4 is null").select("comments.*,motts.motd_id,motts.f1")

        @usershops = Usershop.all.order(updated_at:'desc')

        @payunitjahs = Payunitjah.joins("LEFT OUTER JOIN payunits ON payunitjahs.payunit_id = payunits.id LEFT OUTER JOIN motts ON payunits.mott_id = motts.id LEFT OUTER JOIN motds ON motts.motd_id = motds.id").select("payunitjahs.*,payunits.f7,motts.f1,motts.motd_id,motds.f3").order(updated_at:'desc')
        @payunits = Payunit.joins("LEFT OUTER JOIN motts ON payunits.mott_id = motts.id LEFT OUTER JOIN motds ON motts.motd_id = motds.id").select("payunits.*,motts.f7 as mtf7,motts.f1,motts.motd_id,motds.f3").order(f4:'desc',updated_at:'desc')

        @usershopunejahs = Usershopunejah.joins("LEFT OUTER JOIN usershopunes ON usershopunejahs.usershopune_id = usershopunes.id LEFT OUTER JOIN usershops ON usershopunes.usershop_id = usershops.id LEFT OUTER JOIN users ON usershops.user_id = users.id ").select("usershopunejahs.*,usershops.name1,usershops.name2,usershopunes.name,usershopunes.usershop_id,usershops.user_id").order(updated_at:'desc')

        @userjobpjhunjahs = Userjobpjhunjah.joins("LEFT OUTER JOIN userjobpjhuns ON userjobpjhunjahs.userjobpjhun_id = userjobpjhuns.id LEFT OUTER JOIN userjobpjs ON userjobpjhuns.userjobpj_id = userjobpjs.id LEFT OUTER JOIN userjobs ON userjobpjs.userjob_id = userjobs.id ").select("userjobpjhunjahs.*,userjobpjhuns.hname,userjobpjhuns.userjobpj_id,userjobpjs.name,userjobpjs.userjob_id,userjobs.name as jobname,userjobs.user_id").order(updated_at:'desc')
        @userjuudjdls = Userjuudjdl.all.order(jname:'asc')
        @userjuuds = Userjuud.all.order(name:'asc')


    end

    def show

      @motd = Motd.joins("LEFT OUTER JOIN users ON users.id = motds.f3 ").select("motds.*,users.nickname").find(params[:id])
      @user = User.find(@motd.f3)

      @commotds = @motd.commotds.all.order(updated_at:'desc')

      @f10userpays = Userpay.where(user_id: 1).order(updated_at:'asc')
      @adminuser = User.find(1)

      if session[:user_id]
        @myuser = User.find(session[:user_id])
        @mymlqdbs = @myuser.mlqdbs.all.order(a9:'desc')
        @motdf3mlqdbs = @user.mlqdbs.all.order(a9:'desc')
      end
    end

    def destroy
      @motd = Motd.find(params[:id])
      @motd.destroy
      redirect_to users_path
    end

    def edit
      @motd = Motd.find(params[:id])
      @userangaars = Userangaar.where(user_id: 1).order(updated_at:'asc')

    end

    def update
      @motd = Motd.find(params[:id])
      if @motd.update(motd_params)
        redirect_to users_path
      else
        @userangaars = Userangaar.where(user_id: 1).order(updated_at:'asc')
        render 'edit'
      end
    end

    def new
      @motd = Motd.new
      @userangaars = Userangaar.where(user_id: 1).order(updated_at:'asc')

    end

    def create
      @motd = Motd.new(motd_params)
      if @motd.save
        redirect_to users_path
      else
        @userangaars = Userangaar.where(user_id: 1).order(updated_at:'asc')
        render 'new'
      end
    end

    def motd_params
      params.require(:motd).permit(:f1, :f2, :f3, :fname, :funame, :mda, :mdb)
    end

end
