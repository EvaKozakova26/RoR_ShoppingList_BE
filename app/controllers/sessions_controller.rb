class SessionsController < ApplicationController
  skip_forgery_protection

  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      puts "logged in madafakas"
      puts session
      respond_to do |format|
        format.any { render json: user, content_type: 'application/json' }
      end
    else
      flash.now[:alert] = "Email or password is invalid"
      puts "fuk"
    end
  end

  def destroy
    session[:user_id] = nil
    respond_to do |format|
      format.any { render json: nil, content_type: 'application/json' }
    end
  end
end
