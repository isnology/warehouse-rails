require 'rails_helper'

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

RSpec.describe EntitiesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Entity. As you add validations to Entity, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EntitiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all entities as @entities" do
      entity = Entity.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:entities)).to eq([entity])
    end
  end

  describe "GET show" do
    it "assigns the requested entity as @entity" do
      entity = Entity.create! valid_attributes
      get :show, {:id => entity.to_param}, valid_session
      expect(assigns(:entity)).to eq(entity)
    end
  end

  describe "GET new" do
    it "assigns a new entity as @entity" do
      get :new, {}, valid_session
      expect(assigns(:entity)).to be_a_new(Entity)
    end
  end

  describe "GET edit" do
    it "assigns the requested entity as @entity" do
      entity = Entity.create! valid_attributes
      get :edit, {:id => entity.to_param}, valid_session
      expect(assigns(:entity)).to eq(entity)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Entity" do
        expect {
          post :create, {:entity => valid_attributes}, valid_session
        }.to change(Entity, :count).by(1)
      end

      it "assigns a newly created entity as @entity" do
        post :create, {:entity => valid_attributes}, valid_session
        expect(assigns(:entity)).to be_a(Entity)
        expect(assigns(:entity)).to be_persisted
      end

      it "redirects to the created entity" do
        post :create, {:entity => valid_attributes}, valid_session
        expect(response).to redirect_to(Entity.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved entity as @entity" do
        post :create, {:entity => invalid_attributes}, valid_session
        expect(assigns(:entity)).to be_a_new(Entity)
      end

      it "re-renders the 'new' template" do
        post :create, {:entity => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested entity" do
        entity = Entity.create! valid_attributes
        put :update, {:id => entity.to_param, :entity => new_attributes}, valid_session
        entity.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested entity as @entity" do
        entity = Entity.create! valid_attributes
        put :update, {:id => entity.to_param, :entity => valid_attributes}, valid_session
        expect(assigns(:entity)).to eq(entity)
      end

      it "redirects to the entity" do
        entity = Entity.create! valid_attributes
        put :update, {:id => entity.to_param, :entity => valid_attributes}, valid_session
        expect(response).to redirect_to(entity)
      end
    end

    describe "with invalid params" do
      it "assigns the entity as @entity" do
        entity = Entity.create! valid_attributes
        put :update, {:id => entity.to_param, :entity => invalid_attributes}, valid_session
        expect(assigns(:entity)).to eq(entity)
      end

      it "re-renders the 'edit' template" do
        entity = Entity.create! valid_attributes
        put :update, {:id => entity.to_param, :entity => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested entity" do
      entity = Entity.create! valid_attributes
      expect {
        delete :destroy, {:id => entity.to_param}, valid_session
      }.to change(Entity, :count).by(-1)
    end

    it "redirects to the entities list" do
      entity = Entity.create! valid_attributes
      delete :destroy, {:id => entity.to_param}, valid_session
      expect(response).to redirect_to(entities_url)
    end
  end

end