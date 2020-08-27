class RemailtextsController < ApplicationController
  def create
    @mail = Mail.find(params[:mail_id])
    @mail.remailtexts.create(remailtext_params)
    redirect_to mail_path(@mail)
  end

  def destroy
    @mail = Mail.find(params[:mail_id])
    @remailtext = @mail.remailtexts.find(params[:id])
    @remailtext.destroy
    redirect_to mail_path(@mail)
  end

  def edit
    @mail = Mail.find(params[:mail_id])
    @remailtext = @mail.remailtexts.find(params[:id])
  end

  def update
    @mail = Mail.find(params[:mail_id])
    @remailtext = @mail.remailtexts.find(params[:id])
    if @remailtext.update(remailtext_params)
      redirect_to mail_path(@mail)
    else
      render 'edit'
    end
  end

  private
    def remailtext_params
      params.require(:remailtext).permit(:a1, :f1, :f2, :a2, :f3, :f6, :f7)
    end

end
