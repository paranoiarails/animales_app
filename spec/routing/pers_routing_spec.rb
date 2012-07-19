require "spec_helper"

describe PersController do
  describe "routing" do

    it "routes to #index" do
      get("/pers").should route_to("pers#index")
    end

    it "routes to #new" do
      get("/pers/new").should route_to("pers#new")
    end

    it "routes to #show" do
      get("/pers/1").should route_to("pers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pers/1/edit").should route_to("pers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pers").should route_to("pers#create")
    end

    it "routes to #update" do
      put("/pers/1").should route_to("pers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pers/1").should route_to("pers#destroy", :id => "1")
    end

  end
end
