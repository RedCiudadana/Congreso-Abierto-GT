require "spec_helper"

describe AsigBillDiputadosController do
  describe "routing" do

    it "routes to #index" do
      get("/asig_bill_diputados").should route_to("asig_bill_diputados#index")
    end

    it "routes to #new" do
      get("/asig_bill_diputados/new").should route_to("asig_bill_diputados#new")
    end

    it "routes to #show" do
      get("/asig_bill_diputados/1").should route_to("asig_bill_diputados#show", :id => "1")
    end

    it "routes to #edit" do
      get("/asig_bill_diputados/1/edit").should route_to("asig_bill_diputados#edit", :id => "1")
    end

    it "routes to #create" do
      post("/asig_bill_diputados").should route_to("asig_bill_diputados#create")
    end

    it "routes to #update" do
      put("/asig_bill_diputados/1").should route_to("asig_bill_diputados#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/asig_bill_diputados/1").should route_to("asig_bill_diputados#destroy", :id => "1")
    end

  end
end
