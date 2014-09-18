class CongresoController < ApplicationController
  layout "frontpage"
  
  #FUNCIONES PARA LAS PENSATAÑAS DEL CONGRESO
  def mapa_distrital
    @distrito = params[:mi_parametro] #Aqui hacemos la consulta de los diputados en el distrito seleccionado
     @numero_dip = Diputado.where(:distrito => @distrito).count #Buscamos el contador de diputados en el distrito
     @diputados = Diputado.where(:distrito => @distrito) #Aquí buscamos los datos de los diputados del distrito 
     
     #Este es espacio para operacioens de tabla
     @c2 = @numero_dip / 2 #Aquí buscamos cuantos diputados estarán en la columna dos
     @c1 = @numero_dip - @c2 #Aquí buscamos cuantos diputados estarán en la columna uno
     
     #Ahora buscamos los diputados para cada columna
      @di1 = Diputado.where(:distrito => @distrito).limit(@c1)
      @di2 = Diputado.where(:distrito => @distrito).offset(@c1)
  end

  def lista_diputados
    @dip = Diputado.all
  end

  def perfil_diputados
   
    @diputado = Diputado.find(params[:codigo])
    
   
  end
  
  def bills
    @iniciativas = Bill.all
  end
  
  def detalle_bill
    @codigo = params[:codigo]
    @iniciativa = Bill.where(:id => @codigo)
    
    #Buscamos los datos de la comision
    @iniciativa.each do |i|
      @registro = i.registro
      @fecha = i.fecha_ingreso
      @contenido = i.contenido
      @postulante_externo = i.postulante_externo
    end
    
    #Buscamos los id postulantes de esta comisión
    @postulantes_id = AsigBillDiputado.select(:diputado_id).where(:bill_id => @codigo)
    #Buscamos los id de las comisiones que conoce
    @comisiones_id = AsigBillComission.select(:comission_id).where(:bill_id => @codigo)
    #Buscamos los id de los diputados que han votado por una iniciativa 
    @votos_a_favor_id = VotoDiputado.select(:diputado_id).where(:bill_id => @codigo, :voto => true)
    @votos_en_contra_id = VotoDiputado.select(:diputado_id).where(:bill_id => @codigo, :voto => false)
    
    #Buscamos los nombres correspondites de los ID
    @postulantes = [] #Declaramos el Array donde guardaremos los nombres de de los diputados postulantes
    @comisiones = [] #Declaramos el Array donde guardaremos los nombres de las comisiones que conoces las bills
    @votos_a_favor = [] #Declaramos el Array donde guardaremos los nombres de de los diputados que votaron a favor
    @votos_en_contra = [] #Declaramos el Array donde guardaremos los nombres de de los diputados que votaron en contra
    
    @postulantes_id.each do |n| #Lllenamos el primer Array
      @postulantes += Diputado.where(:id => n.diputado_id)
    end
    
    @comisiones_id.each do |n| #Lllenamos el segundo Array
      @comisiones += Comission.where(:id => n.comission_id)
    end
    
    @votos_a_favor_id.each do |n|
      @votos_a_favor += Diputado.where(:id => n.diputado_id)
    end
    
    @votos_en_contra_id.each do |n|
      @votos_en_contra += Diputado.where(:id => n.diputado_id)
    end
  end
  
  #API'S
  #API para Busqueda por distrito
  def diputadoDistrito
   
    @diputado = Diputado.where("distrito = ?", params[:distrito])
    respond_to do |format|
      format.html # show.html.erb
      format.json {render :json => @diputado}
    end
  end
  
  #API para listaa de diputados
  def diputadoLista
    @diputado = Diputado.all
    respond_to do |format|
      format.html # sho.html.erb
      format.json {render :json => @diputado}
    end
  end
  
  #API para Busqueda por ID
  def diputadoID
    @diputado = Diputado.where("id = ?", params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json {render :json => @diputado}
    end
  end
  
  #API para Busqueda por nombre
  def diputadoNom
    @diputado = Diputado.where("nombre = ?", params[:nombre])
    respond_to do |format|
      format.html # show.html.erb
      format.json {render :json => @diputado}
    end
  end

  #API para busqueda de partido actual
  def diputadoPartidoActual
    @diputado = Diputado.where("partido_actual = ?", params[:partido_actual])
    respond_to do |format|
      format.html
      format.json {render :json => @diputado}
    end
  end
  
  #API para busqueda de partido postulante
  def diputadoPartidoPostulanate
    @diputado = Diputado.where("partido_postulante = ?", params[:partido_postulante])
    respond_to do |format|
      format.html
      format.json {render :json => @diputado}
    end
  end
  
end

 
  
  