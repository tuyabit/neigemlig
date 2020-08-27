class MailtextsController < ApplicationController

    def create
      @mail = Mail.find(params[:mail_id])
      @mail.mailtexts.create(mailtext_params)
      redirect_to mail_path(@mail)
    end

    def destroy
      @mail = Mail.find(params[:mail_id])
      @mailtext = @mail.mailtexts.find(params[:id])
      @mailtext.destroy
      redirect_to mail_path(@mail)
    end

    def edit
      @mail = Mail.find(params[:mail_id])
      @mailtext = @mail.mailtexts.find(params[:id])
      @userfrom = User.find(@mail.f3)
      
      @userangaars = Userangaar.where(user_id: 1).order(updated_at:'asc')

      # if session[:user_id]
      #   @userfrom = User.find(session[:user_id])
      # end
    end

    def update
      @mail = Mail.find(params[:mail_id])
      @mailtext = @mail.mailtexts.find(params[:id])
      if @mailtext.update(mailtext_params)
        redirect_to mail_path(@mail)
      else
        render 'edit'
      end
    end

    private
      def mailtext_params
        params.require(:mailtext).permit(:tt)
      end

end
