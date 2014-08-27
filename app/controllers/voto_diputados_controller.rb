class VotoDiputadosController < ApplicationController
  # GET /voto_diputados
  # GET /voto_diputados.xml
  def index
    @voto_diputados = VotoDiputado.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @voto_diputados }
    end
  end

  # GET /voto_diputados/1
  # GET /voto_diputados/1.xml
  def show
    @voto_diputado = VotoDiputado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @voto_diputado }
    end
  end

  # GET /voto_diputados/new
  # GET /voto_diputados/new.xml
  def new
    @voto_diputado = VotoDiputado.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @voto_diputado }
    end
  end

  # GET /voto_diputados/1/edit
  def edit
    @voto_diputado = VotoDiputado.find(params[:id])
  end

  # POST /voto_diputados
  # POST /voto_diputados.xml
  def create
    @voto_diputado = VotoDiputado.new(params[:voto_diputado])

    respond_to do |format|
      if @voto_diputado.save
        format.html { redirect_to(@voto_diputado, :notice => 'Voto diputado was successfully created.') }
        format.xml  { render :xml => @voto_diputado, :status => :created, :location => @voto_diputado }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @voto_diputado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /voto_diputados/1
  # PUT /voto_diputados/1.xml
  def update
    @voto_diputado = VotoDiputado.find(params[:id])

    respond_to do |format|
      if @voto_diputado.update_attributes(params[:voto_diputado])
        format.html { redirect_to(@voto_diputado, :notice => 'Voto diputado was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @voto_diputado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /voto_diputados/1
  # DELETE /voto_diputados/1.xml
  def destroy
    @voto_diputado = VotoDiputado.find(params[:id])
    @voto_diputado.destroy

    respond_to do |format|
      format.html { redirect_to(voto_diputados_url) }
      format.xml  { head :ok }
    end
  end
end
