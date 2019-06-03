class SessionsController < ApplicationController
  def login
  end

  def create
    if session[:name]
      redirect_to '/'
    elsif params[:name].blank?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end
end
