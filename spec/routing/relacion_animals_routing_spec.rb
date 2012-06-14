require "spec_helper"

describe RelacionAnimalsController do
  describe "routing" do

    it "routes to #index" do
      get("/relacion_animals").should route_to("relacion_animals#index")
    end

    it "routes to #new" do
      get("/relacion_animals/new").should route_to("relacion_animals#new")
    end

    it "routes to #show" do
      get("/relacion_animals/1").should route_to("relacion_animals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/relacion_animals/1/edit").should route_to("relacion_animals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/relacion_animals").should route_to("relacion_animals#create")
    end

    it "routes to #update" do
      put("/relacion_animals/1").should route_to("relacion_animals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/relacion_animals/1").should route_to("relacion_animals#destroy", :id => "1")
    end

  end
end
