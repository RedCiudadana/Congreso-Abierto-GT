require 'spec_helper'

describe ListadosController do

  describe "GET 'lista_dip'" do
    it "returns http success" do
      get 'lista_dip'
      response.should be_success
    end
  end

end
