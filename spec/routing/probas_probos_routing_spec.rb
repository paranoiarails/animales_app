require "spec_helper"

describe ProbasProbosController do
  describe "routing" do

    it "routes to #index" do
      get("/probas_probos").should route_to("probas_probos#index")
    end

    it "routes to #new" do
      get("/probas_probos/new").should route_to("probas_probos#new")
    end

    it "routes to #show" do
      get("/probas_probos/1").should route_to("probas_probos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/probas_probos/1/edit").should route_to("probas_probos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/probas_probos").should route_to("probas_probos#create")
    end

    it "routes to #update" do
      put("/probas_probos/1").should route_to("probas_probos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/probas_probos/1").should route_to("probas_probos#destroy", :id => "1")
    end

  end
end
