class ComissionsController < ApplicationController
   layout "frontpage"
  # GET /comissions
  # GET /comissions.xml
  
  def index
    @comissions = Comission.order(:nombre)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comissions }
    end
  end

  # GET /comissions/1
  # GET /comissions/1.xml
  def show
    @comission = Comission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comission }
    end
  end

  # GET /comissions/new
  # GET /comissions/new.xml
  def new
    @comission = Comission.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comission }
    end
  end

  # GET /comissions/1/edit
  def edit
    @comission = Comission.find(params[:id])
  end

  # POST /comissions
  # POST /comissions.xml
  def create
    @comission = Comission.new(params[:comission])

    respond_to do |format|
      if @comission.save
        format.html { redirect_to(@comission, :notice => 'Comission was successfully created.') }
        format.xml  { render :xml => @comission, :status => :created, :location => @comission }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comissions/1
  # PUT /comissions/1.xml
  def update
    @comission = Comission.find(params[:id])

    respond_to do |format|
      if @comission.update_attributes(params[:comission])
        format.html { redirect_to(@comission, :notice => 'Comission was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comissions/1
  # DELETE /comissions/1.xml
  def destroy
    @comission = Comission.find(params[:id])
    @comission.destroy

    respond_to do |format|
      format.html { redirect_to(comissions_url) }
      format.xml  { head :ok }
    end
  end
  
  
end
