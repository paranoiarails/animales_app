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

describe DiariosController do

  # This should return the minimal set of attributes required to create a valid
  # Diario. As you add validations to Diario, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DiariosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all diarios as @diarios" do
      diario = Diario.create! valid_attributes
      get :index, {}, valid_session
      assigns(:diarios).should eq([diario])
    end
  end

  describe "GET show" do
    it "assigns the requested diario as @diario" do
      diario = Diario.create! valid_attributes
      get :show, {:id => diario.to_param}, valid_session
      assigns(:diario).should eq(diario)
    end
  end

  describe "GET new" do
    it "assigns a new diario as @diario" do
      get :new, {}, valid_session
      assigns(:diario).should be_a_new(Diario)
    end
  end

  describe "GET edit" do
    it "assigns the requested diario as @diario" do
      diario = Diario.create! valid_attributes
      get :edit, {:id => diario.to_param}, valid_session
      assigns(:diario).should eq(diario)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Diario" do
        expect {
          post :create, {:diario => valid_attributes}, valid_session
        }.to change(Diario, :count).by(1)
      end

      it "assigns a newly created diario as @diario" do
        post :create, {:diario => valid_attributes}, valid_session
        assigns(:diario).should be_a(Diario)
        assigns(:diario).should be_persisted
      end

      it "redirects to the created diario" do
        post :create, {:diario => valid_attributes}, valid_session
        response.should redirect_to(Diario.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved diario as @diario" do
        # Trigger the behavior that occurs when invalid params are submitted
        Diario.any_instance.stub(:save).and_return(false)
        post :create, {:diario => {}}, valid_session
        assigns(:diario).should be_a_new(Diario)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Diario.any_instance.stub(:save).and_return(false)
        post :create, {:diario => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested diario" do
        diario = Diario.create! valid_attributes
        # Assuming there are no other diarios in the database, this
        # specifies that the Diario created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Diario.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => diario.to_param, :diario => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested diario as @diario" do
        diario = Diario.create! valid_attributes
        put :update, {:id => diario.to_param, :diario => valid_attributes}, valid_session
        assigns(:diario).should eq(diario)
      end

      it "redirects to the diario" do
        diario = Diario.create! valid_attributes
        put :update, {:id => diario.to_param, :diario => valid_attributes}, valid_session
        response.should redirect_to(diario)
      end
    end

    describe "with invalid params" do
      it "assigns the diario as @diario" do
        diario = Diario.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Diario.any_instance.stub(:save).and_return(false)
        put :update, {:id => diario.to_param, :diario => {}}, valid_session
        assigns(:diario).should eq(diario)
      end

      it "re-renders the 'edit' template" do
        diario = Diario.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Diario.any_instance.stub(:save).and_return(false)
        put :update, {:id => diario.to_param, :diario => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested diario" do
      diario = Diario.create! valid_attributes
      expect {
        delete :destroy, {:id => diario.to_param}, valid_session
      }.to change(Diario, :count).by(-1)
    end

    it "redirects to the diarios list" do
      diario = Diario.create! valid_attributes
      delete :destroy, {:id => diario.to_param}, valid_session
      response.should redirect_to(diarios_url)
    end
  end

end
