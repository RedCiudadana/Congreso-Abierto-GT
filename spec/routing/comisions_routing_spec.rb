require "spec_helper"

describe ComisionsController do
  describe "routing" do

    it "routes to #index" do
      get("/comisions").should route_to("comisions#index")
    end

    it "routes to #new" do
      get("/comisions/new").should route_to("comisions#new")
    end

    it "routes to #show" do
      get("/comisions/1").should route_to("comisions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/comisions/1/edit").should route_to("comisions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/comisions").should route_to("comisions#create")
    end

    it "routes to #update" do
      put("/comisions/1").should route_to("comisions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/comisions/1").should route_to("comisions#destroy", :id => "1")
    end

  end
end
