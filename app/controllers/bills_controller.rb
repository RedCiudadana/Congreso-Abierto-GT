class BillsController < ApplicationController
  layout "frontpage"
  # GET /bills
  # GET /bills.xml
  def index
    @bills = Bill.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bills }
    end
  end

  # GET /bills/1
  # GET /bills/1.xml
  def show
    @bills = Bill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bill }
    end
  end

  # GET /bills/new
  # GET /bills/new.xml
  def new
    @bills = Bill.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bill }
    end
  end

  # GET /bills/1/edit
  def edit
    @bills = Bill.find(params[:id])
  end

  # POST /bills
  # POST /bills.xml
  def create
    @bills = Bill.new(params[:bill])

    respond_to do |format|
      if @bills.save
        format.html { redirect_to(@bills, :notice => 'Bill was successfully created.') }
        format.xml  { render :xml => @bills, :status => :created, :location => @bills }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bills.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bills/1
  # PUT /bills/1.xml
  def update
    @bills = Bill.find(params[:id])

    respond_to do |format|
      if @bills.update_attributes(params[:bill])
        format.html { redirect_to(@bills, :notice => 'Bill was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bills.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bills/1
  # DELETE /bills/1.xml
  def destroy
    @bills = Bill.find(params[:id])
    @bills.destroy

    respond_to do |format|
      format.html { redirect_to(bills_url) }
      format.xml  { head :ok }
    end
  end
end
