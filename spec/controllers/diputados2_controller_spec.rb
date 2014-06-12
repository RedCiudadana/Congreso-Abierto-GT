require 'spec_helper'

describe Diputados2Controller do

  describe "GET 'listado'" do
    it "returns http success" do
      get 'listado'
      response.should be_success
    end
  end

end
