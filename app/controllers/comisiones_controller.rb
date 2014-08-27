class ComisionesController < ApplicationController
  layout "frontpage"
  
  def lista_comisiones
    @listado = Comission.order(:nombre).where(:activa => 'true')
  end

  def show_comision
    @codigo = params[:codigo] #Guardamos el codigo de la comisión solicitada.
    
    @n_miembros = AsigComission.where(:comission_id => @codigo).count #Buscamos cuantos el número de diputados en la comision
    
    #Este es espacio para operacioens de tabla
    @c2 = @n_miembros / 2 #Aquí buscamos cuantos diputados estarán en la columna dos
    @c1 = @n_miembros - @c2 #Aquí buscamos cuantos diputados estarán en la columna uno
     
    @m_id1 = AsigComission.select(:diputado_id).where(:comission_id => @codigo).limit(@c1) #realizamos la busqueda de los miebros con la comisión seleciconada
    @m_id2 = AsigComission.select(:diputado_id).where(:comission_id => @codigo).offset(@c1)
    
    @miembros1 = [] #Declaramos el Array donde guardaremos los nombres de de los diputados para mostrar.
    @miembros2 = []
    
    @m_id1.each do |n| #Lllenamos el primer Array
      @miembros1 += Diputado.where(:id => n.diputado_id)
    end
    
    @m_id2.each do |n| #Lllenamos el segundo Array
      @miembros2 += Diputado.where(:id => n.diputado_id)
    end
    
    @comision = Comission.where(:id => @codigo)
    
  end
  
  #API para conocer las comisiones de un diputado
  def comisionesDiputado
    @id_comisiones = AsigComission.select(:comission_id).where("diputado_id = ?", params[:id])
    @comissiones = []
    @id_comisiones.each do |n|
      @comissiones += Comission.where(:id => n.comission_id)
    end
    
    respond_to do |format|
      format.html # show.html.erb
      format.json {render :json => @comissiones}
    end
    
  end
  
  #API para miembros de una comision
  def miembrosComision
   
    @id_miembros = AsigComission.select(:diputado_id).where("comission_id = ?", params[:id])
    @miembros = [] #Declaramos el Array donde guardaremos los nombres de de los diputados para mostrar.
    @id_miembros.each do |n| #Lllenamos el segundo Array
      @miembros += Diputado.where(:id => n.diputado_id)
    end
    
    respond_to do |format|
      format.html # show.html.erb
      format.json {render :json => @miembros}
    end
  end
  
  #API para listado de comisiones
  def comisionesLista
    @comisiones = Comission.order(:nombre).where(:activa => 'true')
    
    respond_to do |format|
      format.html
      format.json {render :json => @comisiones}
    end
  end
  
  #API para Busqueda por ID
  def comisionID
    @comission = Comission.where("id = ?", params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json {render :json => @comission}
    end
  end 

end
