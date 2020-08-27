class MailsController < ApplicationController

  def index
    # @usermails = Mail.where(f3: session[:user_id]).order(updated_at:'desc')
    @usermails = Mail.joins("LEFT OUTER JOIN users ON users.email = mails.a1 ").where(f3: session[:user_id]).select("mails.*,users.email,users.nickname").order(updated_at:'desc')


    @user = User.find(session[:user_id])
    # @inmails = Mail.where(a1: @user.email.downcase).order(updated_at:'desc')

    @inmails = Mail.joins("LEFT OUTER JOIN users ON users.id = mails.f3 ").where(a1: @user.email.downcase).select("mails.*,users.nickname").order(updated_at:'desc')

    @allmails = Mail.joins("LEFT OUTER JOIN users ON users.id = mails.f3 ").select("mails.*,users.email,users.nickname").order(updated_at:'desc')

    @outrmails = Rmail.joins("LEFT OUTER JOIN users ON users.email = rmails.aa1 LEFT OUTER JOIN mails ON mails.id = rmails.mail_id ").where(ff3: session[:user_id]).select("rmails.*,users.nickname").order(updated_at:'desc')

    @inrmails = Rmail.joins("LEFT OUTER JOIN users ON users.id = rmails.ff3 LEFT OUTER JOIN mails ON mails.id = rmails.mail_id ").where(aa1: @user.email.downcase).select("rmails.*,users.nickname").order(updated_at:'desc')

  end

  def show
    @mail = Mail.find(params[:id])
    if @mail.a1
      @userto = User.find_by(email: @mail.a1.downcase)
    end
    # @userfrom = User.where(user_id: @mail.f3)
    if @mail.f3
      @userfrom = User.find(@mail.f3)
    end

    @rmails = @mail.rmails.all.order(updated_at:'asc')

    @userangaars = Userangaar.where(user_id: 1).order(updated_at:'asc')

  end

  def destroy
    @mail = Mail.find(params[:id])
    @mail.destroy
    redirect_to mail_path(@mail)
  end

  def edit
    @mail = Mail.find(params[:id])

    @userangaars = Userangaar.where(user_id: 1).order(updated_at:'asc')

  end

  def update
    @mail = Mail.find(params[:id])

    if @mail.update(mail_params)
      redirect_to mail_path(@mail)
    else
      render 'edit'
    end
  end

  def new
    @mail = Mail.new
    @users = User.all.order(created_at:'asc')

    @userangaars = Userangaar.where(user_id: 1).order(updated_at:'asc')

  end

  def create
    @mail = Mail.new(mail_params)
    if @mail.save
      redirect_to mail_path(@mail)
    else
      render 'new'
    end
  end

  def mail_params
    params.require(:mail).permit(:a1, :f1, :f2, :a2, :f3, :f6, :f7)
  end

end
