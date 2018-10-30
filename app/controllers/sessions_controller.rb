class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    if !session[:name]
    session[:name] = params[:name]
    redirect_to '/login'
  end

  def destroy
    session.delete :name
    redirect_to '/logout'
  end
  
end