require "spec_helper"

describe ComissionsController do
  describe "routing" do

    it "routes to #index" do
      get("/comissions").should route_to("comissions#index")
    end

    it "routes to #new" do
      get("/comissions/new").should route_to("comissions#new")
    end

    it "routes to #show" do
      get("/comissions/1").should route_to("comissions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/comissions/1/edit").should route_to("comissions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/comissions").should route_to("comissions#create")
    end

    it "routes to #update" do
      put("/comissions/1").should route_to("comissions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/comissions/1").should route_to("comissions#destroy", :id => "1")
    end

  end
end
