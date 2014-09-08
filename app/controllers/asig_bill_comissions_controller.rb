class AsigBillComissionsController < ApplicationController
  # GET /asig_bill_comissions
  # GET /asig_bill_comissions.xml
  layout "frontpage"
  def index
    @asig_bill_comissions = AsigBillComission.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @asig_bill_comissions }
    end
  end

  # GET /asig_bill_comissions/1
  # GET /asig_bill_comissions/1.xml
  def show
    @asig_bill_comission = AsigBillComission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @asig_bill_comission }
    end
  end

  # GET /asig_bill_comissions/new
  # GET /asig_bill_comissions/new.xml
  def new
    @asig_bill_comission = AsigBillComission.new
    
    @bill = Bill.all #Hacemos la consulta de todos los diputados para la lista del select
    @com = Comission.all #Hacemos la consulta de todas las comisiones para la lista del select
    
    @l_bill = {}
    @l_com = {}
    
    @bill.each do |d|
      @l_bill[d.registro] = d.id
    end
    
    @com.each do |c|
      @l_com[c.nombre] = c.id
    end
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @asig_bill_comission }
    end
  end

  # GET /asig_bill_comissions/1/edit
  def edit
    @asig_bill_comission = AsigBillComission.find(params[:id])
    
    @bill = Bill.all #Hacemos la consulta de todos los diputados para la lista del select
    @com = Comission.all #Hacemos la consulta de todas las comisiones para la lista del select
    
    @l_bill = {}
    @l_com = {}
    
    @bill.each do |d|
      @l_bill[d.registro] = d.id
    end
    
    @com.each do |c|
      @l_com[c.nombre] = c.id
    end
    
  end

  # POST /asig_bill_comissions
  # POST /asig_bill_comissions.xml
  def create
    @asig_bill_comission = AsigBillComission.new(params[:asig_bill_comission])

    respond_to do |format|
      if @asig_bill_comission.save
        format.html { redirect_to(@asig_bill_comission, :notice => 'Asig bill comission was successfully created.') }
        format.xml  { render :xml => @asig_bill_comission, :status => :created, :location => @asig_bill_comission }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @asig_bill_comission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /asig_bill_comissions/1
  # PUT /asig_bill_comissions/1.xml
  def update
    @asig_bill_comission = AsigBillComission.find(params[:id])

    respond_to do |format|
      if @asig_bill_comission.update_attributes(params[:asig_bill_comission])
        format.html { redirect_to(@asig_bill_comission, :notice => 'Asig bill comission was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @asig_bill_comission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /asig_bill_comissions/1
  # DELETE /asig_bill_comissions/1.xml
  def destroy
    @asig_bill_comission = AsigBillComission.find(params[:id])
    @asig_bill_comission.destroy

    respond_to do |format|
      format.html { redirect_to(asig_bill_comissions_url) }
      format.xml  { head :ok }
    end
  end
end
