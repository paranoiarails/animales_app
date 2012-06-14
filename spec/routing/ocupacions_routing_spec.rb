require "spec_helper"

describe OcupacionsController do
  describe "routing" do

    it "routes to #index" do
      get("/ocupacions").should route_to("ocupacions#index")
    end

    it "routes to #new" do
      get("/ocupacions/new").should route_to("ocupacions#new")
    end

    it "routes to #show" do
      get("/ocupacions/1").should route_to("ocupacions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ocupacions/1/edit").should route_to("ocupacions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ocupacions").should route_to("ocupacions#create")
    end

    it "routes to #update" do
      put("/ocupacions/1").should route_to("ocupacions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ocupacions/1").should route_to("ocupacions#destroy", :id => "1")
    end

  end
end
