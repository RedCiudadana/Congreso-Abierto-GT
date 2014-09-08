require "spec_helper"

describe VotoDiputadosController do
  describe "routing" do

    it "routes to #index" do
      get("/voto_diputados").should route_to("voto_diputados#index")
    end

    it "routes to #new" do
      get("/voto_diputados/new").should route_to("voto_diputados#new")
    end

    it "routes to #show" do
      get("/voto_diputados/1").should route_to("voto_diputados#show", :id => "1")
    end

    it "routes to #edit" do
      get("/voto_diputados/1/edit").should route_to("voto_diputados#edit", :id => "1")
    end

    it "routes to #create" do
      post("/voto_diputados").should route_to("voto_diputados#create")
    end

    it "routes to #update" do
      put("/voto_diputados/1").should route_to("voto_diputados#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/voto_diputados/1").should route_to("voto_diputados#destroy", :id => "1")
    end

  end
end
