class AsigBillDiputadosController < ApplicationController
  # GET /asig_bill_diputados
  # GET /asig_bill_diputados.xml
  layout "frontpage"
  def index
    @asig_bill_diputados = AsigBillDiputado.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @asig_bill_diputados }
    end
  end

  # GET /asig_bill_diputados/1
  # GET /asig_bill_diputados/1.xml
  def show
    @asig_bill_diputado = AsigBillDiputado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @asig_bill_diputado }
    end
  end

  # GET /asig_bill_diputados/new
  # GET /asig_bill_diputados/new.xml
  def new
    @asig_bill_diputado = AsigBillDiputado.new
    
    @dip = Diputado.all #Hacemos la consulta de todos los diputados para la lista del select
    @bill = Bill.all #Hacemos la consulta de todas las comisiones para la lista del select
    
    @l_dip = {}
    @l_bill = {}
    
    @dip.each do |d|
      @l_dip[d.nombre] = d.id
    end
    
    @bill.each do |c|
      @l_bill[c.registro] = c.id
    end        
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @asig_bill_diputado }
    end
  end

  # GET /asig_bill_diputados/1/edit
  def edit
    @asig_bill_diputado = AsigBillDiputado.find(params[:id])
    @dip = Diputado.all #Hacemos la consulta de todos los diputados para la lista del select
    @bill = Bill.all #Hacemos la consulta de todas las comisiones para la lista del select
    
    @l_dip = {}
    @l_bill = {}
    
    @dip.each do |d|
      @l_dip[d.nombre] = d.id
    end
    
    @bill.each do |c|
      @l_bill[c.registro] = c.id
    end
  end

  # POST /asig_bill_diputados
  # POST /asig_bill_diputados.xml
  def create
    @asig_bill_diputado = AsigBillDiputado.new(params[:asig_bill_diputado])

    respond_to do |format|
      if @asig_bill_diputado.save
        format.html { redirect_to(@asig_bill_diputado, :notice => 'Asig bill diputado was successfully created.') }
        format.xml  { render :xml => @asig_bill_diputado, :status => :created, :location => @asig_bill_diputado }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @asig_bill_diputado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /asig_bill_diputados/1
  # PUT /asig_bill_diputados/1.xml
  def update
    @asig_bill_diputado = AsigBillDiputado.find(params[:id])

    respond_to do |format|
      if @asig_bill_diputado.update_attributes(params[:asig_bill_diputado])
        format.html { redirect_to(@asig_bill_diputado, :notice => 'Asig bill diputado was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @asig_bill_diputado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /asig_bill_diputados/1
  # DELETE /asig_bill_diputados/1.xml
  def destroy
    @asig_bill_diputado = AsigBillDiputado.find(params[:id])
    @asig_bill_diputado.destroy

    respond_to do |format|
      format.html { redirect_to(asig_bill_diputados_url) }
      format.xml  { head :ok }
    end
  end
end
