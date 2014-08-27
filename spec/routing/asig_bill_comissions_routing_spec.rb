require "spec_helper"

describe AsigBillComissionsController do
  describe "routing" do

    it "routes to #index" do
      get("/asig_bill_comissions").should route_to("asig_bill_comissions#index")
    end

    it "routes to #new" do
      get("/asig_bill_comissions/new").should route_to("asig_bill_comissions#new")
    end

    it "routes to #show" do
      get("/asig_bill_comissions/1").should route_to("asig_bill_comissions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/asig_bill_comissions/1/edit").should route_to("asig_bill_comissions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/asig_bill_comissions").should route_to("asig_bill_comissions#create")
    end

    it "routes to #update" do
      put("/asig_bill_comissions/1").should route_to("asig_bill_comissions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/asig_bill_comissions/1").should route_to("asig_bill_comissions#destroy", :id => "1")
    end

  end
end
