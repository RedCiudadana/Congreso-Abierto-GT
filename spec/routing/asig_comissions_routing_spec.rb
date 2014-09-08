require "spec_helper"

describe AsigComissionsController do
  describe "routing" do

    it "routes to #index" do
      get("/asig_comissions").should route_to("asig_comissions#index")
    end

    it "routes to #new" do
      get("/asig_comissions/new").should route_to("asig_comissions#new")
    end

    it "routes to #show" do
      get("/asig_comissions/1").should route_to("asig_comissions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/asig_comissions/1/edit").should route_to("asig_comissions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/asig_comissions").should route_to("asig_comissions#create")
    end

    it "routes to #update" do
      put("/asig_comissions/1").should route_to("asig_comissions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/asig_comissions/1").should route_to("asig_comissions#destroy", :id => "1")
    end

  end
end
