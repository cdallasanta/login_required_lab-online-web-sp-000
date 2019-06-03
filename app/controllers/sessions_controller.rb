class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:name]
      redirect_to '/'
    elsif params[:name].blank?
      redirect_to '/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end
end
