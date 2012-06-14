require "spec_helper"

describe ProbasController do
  describe "routing" do

    it "routes to #index" do
      get("/probas").should route_to("probas#index")
    end

    it "routes to #new" do
      get("/probas/new").should route_to("probas#new")
    end

    it "routes to #show" do
      get("/probas/1").should route_to("probas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/probas/1/edit").should route_to("probas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/probas").should route_to("probas#create")
    end

    it "routes to #update" do
      put("/probas/1").should route_to("probas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/probas/1").should route_to("probas#destroy", :id => "1")
    end

  end
end
