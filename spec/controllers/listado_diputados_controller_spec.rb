require 'spec_helper'

describe ListadoDiputadosController do

  describe "GET 'listado_diputados'" do
    it "returns http success" do
      get 'listado_diputados'
      response.should be_success
    end
  end

end
