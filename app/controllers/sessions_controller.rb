class SessionsController < ApplicationController
  
  def new
    @title = "Sign In"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil? 
      flash.now[:error] = "Invalid email/password combination."
      @title = "Stooopid"
      render 'new'
    else
      @title = "You made it!"
      sign_in user
      redirect_to user
    end
  end
  
  def destroy
    sign_out
    redirect_to signin_path
  end
  
end
