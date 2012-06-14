require "spec_helper"

describe PerfilsZonasController do
  describe "routing" do

    it "routes to #index" do
      get("/perfils_zonas").should route_to("perfils_zonas#index")
    end

    it "routes to #new" do
      get("/perfils_zonas/new").should route_to("perfils_zonas#new")
    end

    it "routes to #show" do
      get("/perfils_zonas/1").should route_to("perfils_zonas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/perfils_zonas/1/edit").should route_to("perfils_zonas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/perfils_zonas").should route_to("perfils_zonas#create")
    end

    it "routes to #update" do
      put("/perfils_zonas/1").should route_to("perfils_zonas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/perfils_zonas/1").should route_to("perfils_zonas#destroy", :id => "1")
    end

  end
end
