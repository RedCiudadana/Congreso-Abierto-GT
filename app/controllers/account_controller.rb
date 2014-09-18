class AccountController < ApplicationController
  
  layout "frontpage"
  
  def new
    @user = User.new 
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Se ha registrado con éxito"
      flash[:color]= "valid"
    else
      flash[:notice] = "Datos invalidos"
      flash[:color]= "invalid"
    end
    render "new"
  end
    
end
