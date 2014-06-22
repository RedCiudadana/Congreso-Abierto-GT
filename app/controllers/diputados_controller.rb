class DiputadosController < ApplicationController
  layout "frontpage"
  
  def lista_diputados
    @dip = Diputados.all
  end
  
  def perfil_diputados
    @codigo = params[:codigo]
    @diputado = Diputados.where(:id => @codigo)
    
    @diputado.each do |n|
      @nombre = n.nombre
      @dis = n.distrito
      @correo = n.correo
      @telefono = n.telefono
      @ext = n.ext
      @direccion = n.direccion
      @url = n.url_foto
    end
  end
  
  def mapa_distrital
     @distrito = params[:mi_parametro] #Aqui hacemos la consulta de los diputados en el distrito seleccionado
     @numero_dip = Diputados.where(:distrito => @distrito).count #Buscamos el contador de diputados en el distrito
     @diputados = Diputados.where(:distrito => @distrito) #Aquí buscamos los datos de los diputados del distrito     
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