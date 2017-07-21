class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:password_reset][:email].downcase)
    if @user
      @user.create_reset_digest
      @user.send_password_reset_email
    end
    
    flash[:info] = "If the email exists an email will be sent with reset instructions"
    redirect_to root_url
  end
    
  def edit
  end
end
