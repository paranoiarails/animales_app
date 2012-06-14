require "spec_helper"

describe DinasController do
  describe "routing" do

    it "routes to #index" do
      get("/dinas").should route_to("dinas#index")
    end

    it "routes to #new" do
      get("/dinas/new").should route_to("dinas#new")
    end

    it "routes to #show" do
      get("/dinas/1").should route_to("dinas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dinas/1/edit").should route_to("dinas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dinas").should route_to("dinas#create")
    end

    it "routes to #update" do
      put("/dinas/1").should route_to("dinas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dinas/1").should route_to("dinas#destroy", :id => "1")
    end

  end
end
