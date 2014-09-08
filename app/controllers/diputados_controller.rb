class DiputadosController < ApplicationController
  layout "frontpage"
  
  #FUNCIONES PARA EL SCAFFOLDING DE LOS DIPUTADOS
  # GET /diputados
  # GET /diputados.xml
  def index
    @diputados = Diputado.order('distrito')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @diputados }
    end
  end

  # GET /diputados/1
  # GET /diputados/1.xml
  def show
    @diputado = Diputado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @diputado }
    end
  end

  # GET /diputados/new
  # GET /diputados/new.xml
  def new
    @diputado = Diputado.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @diputado }
    end
  end

  # GET /diputados/1/edit
  def edit
    @diputado = Diputado.find(params[:id])
  end

  # POST /diputados
  # POST /diputados.xml
  def create
    @diputado = Diputado.new(params[:diputado])

    respond_to do |format|
      if @diputado.save
        format.html { redirect_to(@diputado, :notice => 'Diputado was successfully created.') }
        format.xml  { render :xml => @diputado, :status => :created, :location => @diputado }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @diputado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /diputados/1
  # PUT /diputados/1.xml
  def update
    @diputado = Diputado.find(params[:id])

    respond_to do |format|
      if @diputado.update_attributes(params[:diputado])
        format.html { redirect_to(@diputado, :notice => 'Diputado was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @diputado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /diputados/1
  # DELETE /diputados/1.xml
  def destroy
    @diputado = Diputado.find(params[:id])
    @diputado.destroy

    respond_to do |format|
      format.html { redirect_to(diputados_url) }
      format.xml  { head :ok }
    end
  end
end
