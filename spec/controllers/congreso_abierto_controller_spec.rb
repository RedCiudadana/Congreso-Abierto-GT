require 'spec_helper'

describe CongresoAbiertoController do

  describe "GET 'congreso_abierto'" do
    it "returns http success" do
      get 'congreso_abierto'
      response.should be_success
    end
  end

end
