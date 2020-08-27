class RmailsController < ApplicationController

    def create
      @mail = Mail.find(session[:user_id])
      @mail.rmails.create(rmail_params)
      redirect_to mail_path(@mail)
    end

    def destroy
      @mail = Mail.find(params[:mail_id])
      @rmail = @mail.rmails.find(params[:id])
      @rmail.destroy
      redirect_to mail_path(@mail)
    end

    def edit
      @mail = Mail.find(params[:mail_id])
      @rmail = @mail.rmails.find(params[:id])
    end

    def update
      @mail = Mail.find(params[:mail_id])
      @rmail = @mail.rmails.find(params[:id])
      if @rmail.update(rmail_params)
        redirect_to mail_path(@mail)
      else
        render 'edit'
      end
    end

    private
      def rmail_params
        params.require(:rmail).permit(:aa1, :ff1, :ff2, :aa2, :ff3, :ff6, :ff7)
      end

end
