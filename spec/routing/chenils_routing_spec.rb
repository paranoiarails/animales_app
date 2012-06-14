require "spec_helper"

describe ChenilsController do
  describe "routing" do

    it "routes to #index" do
      get("/chenils").should route_to("chenils#index")
    end

    it "routes to #new" do
      get("/chenils/new").should route_to("chenils#new")
    end

    it "routes to #show" do
      get("/chenils/1").should route_to("chenils#show", :id => "1")
    end

    it "routes to #edit" do
      get("/chenils/1/edit").should route_to("chenils#edit", :id => "1")
    end

    it "routes to #create" do
      post("/chenils").should route_to("chenils#create")
    end

    it "routes to #update" do
      put("/chenils/1").should route_to("chenils#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/chenils/1").should route_to("chenils#destroy", :id => "1")
    end

  end
end
