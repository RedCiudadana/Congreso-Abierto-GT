require 'spec_helper'

describe ComisionesController do

  describe "GET 'lista_comisiones'" do
    it "returns http success" do
      get 'lista_comisiones'
      response.should be_success
    end
  end

  describe "GET 'show_comision'" do
    it "returns http success" do
      get 'show_comision'
      response.should be_success
    end
  end

end
