require "spec_helper"

describe DiariosController do
  describe "routing" do

    it "routes to #index" do
      get("/diarios").should route_to("diarios#index")
    end

    it "routes to #new" do
      get("/diarios/new").should route_to("diarios#new")
    end

    it "routes to #show" do
      get("/diarios/1").should route_to("diarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/diarios/1/edit").should route_to("diarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/diarios").should route_to("diarios#create")
    end

    it "routes to #update" do
      put("/diarios/1").should route_to("diarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/diarios/1").should route_to("diarios#destroy", :id => "1")
    end

  end
end
