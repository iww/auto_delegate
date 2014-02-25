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

describe DuesController do

  # This should return the minimal set of attributes required to create a valid
  # Due. As you add validations to Due, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "collection_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DuesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all dues as @dues" do
      due = Due.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:dues)).to eq([due])
    end
  end

  describe "GET show" do
    it "assigns the requested due as @due" do
      due = Due.create! valid_attributes
      get :show, {:id => due.to_param}, valid_session
      expect(assigns(:due)).to eq(due)
    end
  end

  describe "GET new" do
    it "assigns a new due as @due" do
      get :new, {}, valid_session
      expect(assigns(:due)).to be_a_new(Due)
    end
  end

  describe "GET edit" do
    it "assigns the requested due as @due" do
      due = Due.create! valid_attributes
      get :edit, {:id => due.to_param}, valid_session
      expect(assigns(:due)).to eq(due)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Due" do
        expect {
          post :create, {:due => valid_attributes}, valid_session
        }.to change(Due, :count).by(1)
      end

      it "assigns a newly created due as @due" do
        post :create, {:due => valid_attributes}, valid_session
        expect(assigns(:due)).to be_a(Due)
        expect(assigns(:due)).to be_persisted
      end

      it "redirects to the created due" do
        post :create, {:due => valid_attributes}, valid_session
        expect(response).to redirect_to(Due.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved due as @due" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Due).to receive(:save).and_return(false)
        post :create, {:due => { "collection_id" => "invalid value" }}, valid_session
        expect(assigns(:due)).to be_a_new(Due)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Due).to receive(:save).and_return(false)
        post :create, {:due => { "collection_id" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested due" do
        due = Due.create! valid_attributes
        # Assuming there are no other dues in the database, this
        # specifies that the Due created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Due).to receive(:update).with({ "collection_id" => "1" })
        put :update, {:id => due.to_param, :due => { "collection_id" => "1" }}, valid_session
      end

      it "assigns the requested due as @due" do
        due = Due.create! valid_attributes
        put :update, {:id => due.to_param, :due => valid_attributes}, valid_session
        expect(assigns(:due)).to eq(due)
      end

      it "redirects to the due" do
        due = Due.create! valid_attributes
        put :update, {:id => due.to_param, :due => valid_attributes}, valid_session
        expect(response).to redirect_to(due)
      end
    end

    describe "with invalid params" do
      it "assigns the due as @due" do
        due = Due.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Due).to receive(:save).and_return(false)
        put :update, {:id => due.to_param, :due => { "collection_id" => "invalid value" }}, valid_session
        expect(assigns(:due)).to eq(due)
      end

      it "re-renders the 'edit' template" do
        due = Due.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Due).to receive(:save).and_return(false)
        put :update, {:id => due.to_param, :due => { "collection_id" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested due" do
      due = Due.create! valid_attributes
      expect {
        delete :destroy, {:id => due.to_param}, valid_session
      }.to change(Due, :count).by(-1)
    end

    it "redirects to the dues list" do
      due = Due.create! valid_attributes
      delete :destroy, {:id => due.to_param}, valid_session
      expect(response).to redirect_to(dues_url)
    end
  end

end