class AsigComissionsController < ApplicationController
  layout "frontpage"
  # GET /asig_comissions
  # GET /asig_comissions.xml
  def index
    @asig_comissions = AsigComission.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @asig_comissions }
    end
  end

  # GET /asig_comissions/1
  # GET /asig_comissions/1.xml
  def show
    @asig_comission = AsigComission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @asig_comission }
    end
  end

  # GET /asig_comissions/new
  # GET /asig_comissions/new.xml
  def new
    @asig_comission = AsigComission.new
    @dip = Diputado.all #Hacemos la consulta de todos los diputados para la lista del select
    @com = Comission.all #Hacemos la consulta de todas las comisiones para la lista del select
    
    @l_dip = {}
    @l_com = {}
    
    @dip.each do |d|
      @l_dip[d.nombre] = d.id
    end
    
    @com.each do |c|
      @l_com[c.nombre] = c.id
    end
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @asig_comission }
    end
  end

  # GET /asig_comissions/1/edit
  def edit
    @asig_comission = AsigComission.find(params[:id])
  end

  # POST /asig_comissions
  # POST /asig_comissions.xml
  def create
    @asig_comission = AsigComission.new(params[:asig_comission])

    respond_to do |format|
      if @asig_comission.save
        format.html { redirect_to(@asig_comission, :notice => 'Asig comission was successfully created.') }
        format.xml  { render :xml => @asig_comission, :status => :created, :location => @asig_comission }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @asig_comission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /asig_comissions/1
  # PUT /asig_comissions/1.xml
  def update
    @asig_comission = AsigComission.find(params[:id])

    respond_to do |format|
      if @asig_comission.update_attributes(params[:asig_comission])
        format.html { redirect_to(@asig_comission, :notice => 'Asig comission was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @asig_comission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /asig_comissions/1
  # DELETE /asig_comissions/1.xml
  def destroy
    @asig_comission = AsigComission.find(params[:id])
    @asig_comission.destroy

    respond_to do |format|
      format.html { redirect_to(asig_comissions_url) }
      format.xml  { head :ok }
    end
  end
end
