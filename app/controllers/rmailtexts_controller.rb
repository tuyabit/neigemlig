class RmailtextsController < ApplicationController

      def create
        @mail = Mail.find(params[:mail_id])
        @rmail = @mail.rmails.find(params[:rmail_id])
        @rmail.rmailtexts.create(rmailtext_params)
        redirect_to mail_path(@mail)
      end

      def destroy
        @mail = Mail.find(params[:mail_id])
        @rmail = @mail.rmails.find(params[:rmail_id])
        @rmailtext = @rmail.rmailtexts.find(params[:id])
        @rmailtext.destroy
        redirect_to mail_path(@mail)
      end

      def edit
        @mail = Mail.find(params[:mail_id])
        @rmail = @mail.rmails.find(params[:rmail_id])
        @rmailtext = @rmail.rmailtexts.find(params[:id])
      end

      def update
        @mail = Mail.find(params[:mail_id])
        @rmail = @mail.rmails.find(params[:rmail_id])
        @rmailtext = @rmail.rmailtexts.find(params[:id])
        if @rmailtext.update(rmailtext_params)
          redirect_to mail_path(@mail)
        else
          render 'edit'
        end
      end

      private
        def rmailtext_params
          params.require(:rmailtext).permit(:tt)
        end

end
