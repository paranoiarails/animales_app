require "spec_helper"

describe ProbosController do
  describe "routing" do

    it "routes to #index" do
      get("/probos").should route_to("probos#index")
    end

    it "routes to #new" do
      get("/probos/new").should route_to("probos#new")
    end

    it "routes to #show" do
      get("/probos/1").should route_to("probos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/probos/1/edit").should route_to("probos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/probos").should route_to("probos#create")
    end

    it "routes to #update" do
      put("/probos/1").should route_to("probos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/probos/1").should route_to("probos#destroy", :id => "1")
    end

  end
end
