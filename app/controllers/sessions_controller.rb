class SessionsController < ApplicationController
  def login
  end

  def create
    if session[:username]
      redirect_to '/'
    elsif params[:username].blank?
      redirect_to '/login'
    else
      session[:username] = params[:username]
      redirect_to '/'
  end
end
