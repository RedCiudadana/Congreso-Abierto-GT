require 'spec_helper'

describe CongresoController do

  describe "GET 'mapa_distrital'" do
    it "returns http success" do
      get 'mapa_distrital'
      response.should be_success
    end
  end

  describe "GET 'lista_diputados'" do
    it "returns http success" do
      get 'lista_diputados'
      response.should be_success
    end
  end

  describe "GET 'perfil_diputados'" do
    it "returns http success" do
      get 'perfil_diputados'
      response.should be_success
    end
  end

end
