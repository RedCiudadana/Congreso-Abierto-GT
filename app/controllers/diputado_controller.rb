class DiputadoController < ApplicationController
  
  #API para Busqueda por nombre
  
  
  #API para Busqueda por departamento 
  def diputadoDepto
    @diputado = Diputado.where("departamento = ?", params[:departamento]).first
    respond_to do |format|
      format.html # show.html.erb
      format.json {render :json => @diputado}
    end
  end

  #API para Busqueda por Partido
  def diputadoPartido
    @diputado = Diputado.where("partido_actual = ?", params[:partido_actual]).first
    respond_to do |format|
      format.html # sho.html.erb
      format.json {render :json => @diputado}
    end
  end
  
  #API para Busqueda por Partido
  def diputadoLista
    @diputado = Diputado.all
    respond_to do |format|
      format.html # sho.html.erb
      format.json {render :json => @diputado}
    end
  end
  
  #API para Busqueda por nombre
  def diputadoNom
    @diputado = Diputado.where("nombre = ?", params[:nombre]).first
    respond_to do |format|
      format.html # show.html.erb
      format.json {render :json => @diputado}
    end
  end
end
