require 'spec_helper'

describe "AsigBillDiputados" do
  describe "GET /asig_bill_diputados" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get asig_bill_diputados_path
      response.status.should be(200)
    end
  end
end
