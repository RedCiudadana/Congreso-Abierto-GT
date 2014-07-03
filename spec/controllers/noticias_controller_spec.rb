require 'spec_helper'

describe NoticiasController do

  describe "GET 'resumen'" do
    it "returns http success" do
      get 'resumen'
      response.should be_success
    end
  end

  describe "GET 'despliegue'" do
    it "returns http success" do
      get 'despliegue'
      response.should be_success
    end
  end

end
