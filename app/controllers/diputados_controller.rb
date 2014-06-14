class DiputadosController < ApplicationController
  layout "frontpage"
  
  def lista_diputados
    @dip = Diputados.all
  end
  
  def perfil_diputados
    
  end
  
   def mapa_distrital
     @distrito = params[:mi_parametro]
     @numero_dip = Diputados.where(:distrito => @distrito).count
     @diputados = Diputados.where(:distrito => @distrito)
     @distrito = @distrito.upcase
   end
  
  def re_perfil
    redirect_to :action => 'perfil_diputados'
  end
  
  def re_mapa_distrital
    redirect_to :action => 'mapa_distrital'
  end
  
  def re_lista_diputados
    redirect_to :action => 'lista_diputados'
  end
  
end