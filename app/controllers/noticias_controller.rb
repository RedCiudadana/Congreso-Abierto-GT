class NoticiasController < ApplicationController
  layout "frontpage"
  def resumen
    
  end

  def despliegue
  end
  
  def re_resumen
    redirect_to :action => 'resumen'
  end
  
  def re_despliegue
    redirect_to :action => 'despliegue'
  end
end
