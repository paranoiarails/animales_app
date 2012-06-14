require "spec_helper"

describe PerfilsController do
  describe "routing" do

    it "routes to #index" do
      get("/perfils").should route_to("perfils#index")
    end

    it "routes to #new" do
      get("/perfils/new").should route_to("perfils#new")
    end

    it "routes to #show" do
      get("/perfils/1").should route_to("perfils#show", :id => "1")
    end

    it "routes to #edit" do
      get("/perfils/1/edit").should route_to("perfils#edit", :id => "1")
    end

    it "routes to #create" do
      post("/perfils").should route_to("perfils#create")
    end

    it "routes to #update" do
      put("/perfils/1").should route_to("perfils#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/perfils/1").should route_to("perfils#destroy", :id => "1")
    end

  end
end
