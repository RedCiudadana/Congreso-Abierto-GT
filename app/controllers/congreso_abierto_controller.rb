class CongresoAbiertoController < ApplicationController
  layout "frontpage"
  
  
  caches_page :pipa
  def index 
  
  end
  
  def re_informacion
    redirect_to :action => 'informacion'
  end
  
  def re_equipo
    redirect_to :action => 'equipo'
  end
  
  def re_voluntarios 
    redirect_to :action => 'voluntario'
  end

end
