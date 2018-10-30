class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    if !session[:name]
      session[:name] = params[:name]
      redirect_to '/login'
    else 
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '{controller: 'sessions', action: 'destroy', method: 'post'}'
  end
  
end