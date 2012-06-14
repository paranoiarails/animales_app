require "spec_helper"

describe DinosController do
  describe "routing" do

    it "routes to #index" do
      get("/dinos").should route_to("dinos#index")
    end

    it "routes to #new" do
      get("/dinos/new").should route_to("dinos#new")
    end

    it "routes to #show" do
      get("/dinos/1").should route_to("dinos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dinos/1/edit").should route_to("dinos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dinos").should route_to("dinos#create")
    end

    it "routes to #update" do
      put("/dinos/1").should route_to("dinos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dinos/1").should route_to("dinos#destroy", :id => "1")
    end

  end
end
