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

describe PerfilsController do

  # This should return the minimal set of attributes required to create a valid
  # Perfil. As you add validations to Perfil, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PerfilsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all perfils as @perfils" do
      perfil = Perfil.create! valid_attributes
      get :index, {}, valid_session
      assigns(:perfils).should eq([perfil])
    end
  end

  describe "GET show" do
    it "assigns the requested perfil as @perfil" do
      perfil = Perfil.create! valid_attributes
      get :show, {:id => perfil.to_param}, valid_session
      assigns(:perfil).should eq(perfil)
    end
  end

  describe "GET new" do
    it "assigns a new perfil as @perfil" do
      get :new, {}, valid_session
      assigns(:perfil).should be_a_new(Perfil)
    end
  end

  describe "GET edit" do
    it "assigns the requested perfil as @perfil" do
      perfil = Perfil.create! valid_attributes
      get :edit, {:id => perfil.to_param}, valid_session
      assigns(:perfil).should eq(perfil)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Perfil" do
        expect {
          post :create, {:perfil => valid_attributes}, valid_session
        }.to change(Perfil, :count).by(1)
      end

      it "assigns a newly created perfil as @perfil" do
        post :create, {:perfil => valid_attributes}, valid_session
        assigns(:perfil).should be_a(Perfil)
        assigns(:perfil).should be_persisted
      end

      it "redirects to the created perfil" do
        post :create, {:perfil => valid_attributes}, valid_session
        response.should redirect_to(Perfil.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved perfil as @perfil" do
        # Trigger the behavior that occurs when invalid params are submitted
        Perfil.any_instance.stub(:save).and_return(false)
        post :create, {:perfil => {}}, valid_session
        assigns(:perfil).should be_a_new(Perfil)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Perfil.any_instance.stub(:save).and_return(false)
        post :create, {:perfil => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested perfil" do
        perfil = Perfil.create! valid_attributes
        # Assuming there are no other perfils in the database, this
        # specifies that the Perfil created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Perfil.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => perfil.to_param, :perfil => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested perfil as @perfil" do
        perfil = Perfil.create! valid_attributes
        put :update, {:id => perfil.to_param, :perfil => valid_attributes}, valid_session
        assigns(:perfil).should eq(perfil)
      end

      it "redirects to the perfil" do
        perfil = Perfil.create! valid_attributes
        put :update, {:id => perfil.to_param, :perfil => valid_attributes}, valid_session
        response.should redirect_to(perfil)
      end
    end

    describe "with invalid params" do
      it "assigns the perfil as @perfil" do
        perfil = Perfil.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Perfil.any_instance.stub(:save).and_return(false)
        put :update, {:id => perfil.to_param, :perfil => {}}, valid_session
        assigns(:perfil).should eq(perfil)
      end

      it "re-renders the 'edit' template" do
        perfil = Perfil.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Perfil.any_instance.stub(:save).and_return(false)
        put :update, {:id => perfil.to_param, :perfil => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested perfil" do
      perfil = Perfil.create! valid_attributes
      expect {
        delete :destroy, {:id => perfil.to_param}, valid_session
      }.to change(Perfil, :count).by(-1)
    end

    it "redirects to the perfils list" do
      perfil = Perfil.create! valid_attributes
      delete :destroy, {:id => perfil.to_param}, valid_session
      response.should redirect_to(perfils_url)
    end
  end

end
