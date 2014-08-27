require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AsigBillComissionsController do

  # This should return the minimal set of attributes required to create a valid
  # AsigBillComission. As you add validations to AsigBillComission, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AsigBillComissionsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all asig_bill_comissions as @asig_bill_comissions" do
      asig_bill_comission = AsigBillComission.create! valid_attributes
      get :index, {}, valid_session
      assigns(:asig_bill_comissions).should eq([asig_bill_comission])
    end
  end

  describe "GET show" do
    it "assigns the requested asig_bill_comission as @asig_bill_comission" do
      asig_bill_comission = AsigBillComission.create! valid_attributes
      get :show, {:id => asig_bill_comission.to_param}, valid_session
      assigns(:asig_bill_comission).should eq(asig_bill_comission)
    end
  end

  describe "GET new" do
    it "assigns a new asig_bill_comission as @asig_bill_comission" do
      get :new, {}, valid_session
      assigns(:asig_bill_comission).should be_a_new(AsigBillComission)
    end
  end

  describe "GET edit" do
    it "assigns the requested asig_bill_comission as @asig_bill_comission" do
      asig_bill_comission = AsigBillComission.create! valid_attributes
      get :edit, {:id => asig_bill_comission.to_param}, valid_session
      assigns(:asig_bill_comission).should eq(asig_bill_comission)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AsigBillComission" do
        expect {
          post :create, {:asig_bill_comission => valid_attributes}, valid_session
        }.to change(AsigBillComission, :count).by(1)
      end

      it "assigns a newly created asig_bill_comission as @asig_bill_comission" do
        post :create, {:asig_bill_comission => valid_attributes}, valid_session
        assigns(:asig_bill_comission).should be_a(AsigBillComission)
        assigns(:asig_bill_comission).should be_persisted
      end

      it "redirects to the created asig_bill_comission" do
        post :create, {:asig_bill_comission => valid_attributes}, valid_session
        response.should redirect_to(AsigBillComission.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved asig_bill_comission as @asig_bill_comission" do
        # Trigger the behavior that occurs when invalid params are submitted
        AsigBillComission.any_instance.stub(:save).and_return(false)
        post :create, {:asig_bill_comission => {}}, valid_session
        assigns(:asig_bill_comission).should be_a_new(AsigBillComission)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        AsigBillComission.any_instance.stub(:save).and_return(false)
        post :create, {:asig_bill_comission => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested asig_bill_comission" do
        asig_bill_comission = AsigBillComission.create! valid_attributes
        # Assuming there are no other asig_bill_comissions in the database, this
        # specifies that the AsigBillComission created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        AsigBillComission.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => asig_bill_comission.to_param, :asig_bill_comission => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested asig_bill_comission as @asig_bill_comission" do
        asig_bill_comission = AsigBillComission.create! valid_attributes
        put :update, {:id => asig_bill_comission.to_param, :asig_bill_comission => valid_attributes}, valid_session
        assigns(:asig_bill_comission).should eq(asig_bill_comission)
      end

      it "redirects to the asig_bill_comission" do
        asig_bill_comission = AsigBillComission.create! valid_attributes
        put :update, {:id => asig_bill_comission.to_param, :asig_bill_comission => valid_attributes}, valid_session
        response.should redirect_to(asig_bill_comission)
      end
    end

    describe "with invalid params" do
      it "assigns the asig_bill_comission as @asig_bill_comission" do
        asig_bill_comission = AsigBillComission.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AsigBillComission.any_instance.stub(:save).and_return(false)
        put :update, {:id => asig_bill_comission.to_param, :asig_bill_comission => {}}, valid_session
        assigns(:asig_bill_comission).should eq(asig_bill_comission)
      end

      it "re-renders the 'edit' template" do
        asig_bill_comission = AsigBillComission.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AsigBillComission.any_instance.stub(:save).and_return(false)
        put :update, {:id => asig_bill_comission.to_param, :asig_bill_comission => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested asig_bill_comission" do
      asig_bill_comission = AsigBillComission.create! valid_attributes
      expect {
        delete :destroy, {:id => asig_bill_comission.to_param}, valid_session
      }.to change(AsigBillComission, :count).by(-1)
    end

    it "redirects to the asig_bill_comissions list" do
      asig_bill_comission = AsigBillComission.create! valid_attributes
      delete :destroy, {:id => asig_bill_comission.to_param}, valid_session
      response.should redirect_to(asig_bill_comissions_url)
    end
  end

end