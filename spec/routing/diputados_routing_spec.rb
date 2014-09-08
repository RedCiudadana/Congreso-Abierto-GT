require "spec_helper"

describe DiputadosController do
  describe "routing" do

    it "routes to #index" do
      get("/diputados").should route_to("diputados#index")
    end

    it "routes to #new" do
      get("/diputados/new").should route_to("diputados#new")
    end

    it "routes to #show" do
      get("/diputados/1").should route_to("diputados#show", :id => "1")
    end

    it "routes to #edit" do
      get("/diputados/1/edit").should route_to("diputados#edit", :id => "1")
    end

    it "routes to #create" do
      post("/diputados").should route_to("diputados#create")
    end

    it "routes to #update" do
      put("/diputados/1").should route_to("diputados#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/diputados/1").should route_to("diputados#destroy", :id => "1")
    end

  end
end
