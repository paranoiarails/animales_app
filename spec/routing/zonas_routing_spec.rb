require "spec_helper"

describe ZonasController do
  describe "routing" do

    it "routes to #index" do
      get("/zonas").should route_to("zonas#index")
    end

    it "routes to #new" do
      get("/zonas/new").should route_to("zonas#new")
    end

    it "routes to #show" do
      get("/zonas/1").should route_to("zonas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/zonas/1/edit").should route_to("zonas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/zonas").should route_to("zonas#create")
    end

    it "routes to #update" do
      put("/zonas/1").should route_to("zonas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/zonas/1").should route_to("zonas#destroy", :id => "1")
    end

  end
end
