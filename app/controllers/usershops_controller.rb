class UsershopsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @usershops = @user.usershops.all.order(updated_at:'asc')
    @allshops = Usershop.all.order(updated_at:'desc')

    if session[:user_id]
      @myuser = User.find(session[:user_id])
    end

  end

  def show

    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:id])

    if session[:user_id]
      @myuser = User.find(session[:user_id])
      @myusershops = @myuser.usershops.all.order(updated_at:'asc')
      @adminuser = User.find(1)
    end

    @shopunejahs =  Usershopunejah.joins("LEFT OUTER JOIN usershopunes ON  usershopunejahs.usershopune_id = usershopunes.id LEFT OUTER JOIN usershops ON usershopunes.usershop_id=usershops.id ").select("usershopunejahs.*,usershopunejahs.id as jahid ,usershopunejahs.usershopune_id,
      usershopunejahs.from as jafrom,
      usershopunejahs.name as janame,
      usershopunejahs.name1 as janame1,
      usershopunejahs.une1 as jaune1,
      usershopunejahs.une2 as jaune2,
      usershopunejahs.une3 as jaune3,
      usershopunejahs.dune as jadune,
      usershopunejahs.unit1 as jaunit1,
      usershopunejahs.unit2 as jaunit2,
      usershopunejahs.jah1 as jajah1,
      usershopunejahs.bay1 as jabay1,
      usershopunejahs.get1dt as jaget1dt,
      usershopunejahs.get2dt as jaget2dt,
      usershopunejahs.ujdt as jaujdt,
      usershopunes.*,usershops.*")
    @usershopunejahs = @shopunejahs.where(userid: session[:user_id]).order(usershop_id:'asc',usershopune_id:'asc',id:'asc')


    @sumjahs =  Usershopunejah.where(userid: session[:user_id]).joins("LEFT OUTER JOIN usershopunes ON  usershopunejahs.usershopune_id = usershopunes.id LEFT OUTER JOIN usershops ON usershopunes.usershop_id=usershops.id ").select("usershopunejahs.*,usershopunes.usershop_id,usershops.user_id")
    @sums = @sumjahs.select("usershops.user_id,trim(usershopunejahs.unit2) as unit2,SUM(usershopunejahs.une2) as sumune2").group("user_id,trim(usershopunejahs.unit2)")

    @shoppays = Shoppay.all.order(updated_at:'asc')

    @userpays = Userpay.where(userid: session[:user_id],f10: nil).select("user_id,trim(unit) as unit,SUM(f4) as f4,SUM(f5) as f5").group("user_id,trim(unit)")
    @alluserpays = Userpay.where(user_id: session[:user_id]).select("userid,trim(unit) as unit,SUM(f4) as f4,SUM(f5) as f5").group("userid,trim(unit)")

    @f10userpays = Userpay.where(userid: session[:user_id]).order(updated_at:'asc')

    @payimages = Payimage.where(user_id: params[:user_id]).order(updated_at:'desc')

    @usershops = Usershop.all.order(updated_at:'desc')

  end

  def create
    @user = User.find(params[:user_id])
    @user.usershops.create(usershop_params)
    redirect_to user_usershops_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:id])
    @usershop.destroy
    redirect_to user_usershops_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @usershop = @user.usershops.find(params[:id])
    if @usershop.update(usershop_params)
      redirect_to user_usershop_path(@user,@usershop)
    else
      render 'edit'
    end
  end

  private
    def usershop_params
      params.require(:usershop).permit(:name1, :name2)
    end

end
