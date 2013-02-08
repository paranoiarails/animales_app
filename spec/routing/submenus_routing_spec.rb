require "spec_helper"

describe SubmenusController do
  describe "routing" do

    it "routes to #index" do
      get("/submenus").should route_to("submenus#index")
    end

    it "routes to #new" do
      get("/submenus/new").should route_to("submenus#new")
    end

    it "routes to #show" do
      get("/submenus/1").should route_to("submenus#show", :id => "1")
    end

    it "routes to #edit" do
      get("/submenus/1/edit").should route_to("submenus#edit", :id => "1")
    end

    it "routes to #create" do
      post("/submenus").should route_to("submenus#create")
    end

    it "routes to #update" do
      put("/submenus/1").should route_to("submenus#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/submenus/1").should route_to("submenus#destroy", :id => "1")
    end

  end
end
