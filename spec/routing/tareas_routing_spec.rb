require "spec_helper"

describe TareasController do
  describe "routing" do

    it "routes to #index" do
      get("/tareas").should route_to("tareas#index")
    end

    it "routes to #new" do
      get("/tareas/new").should route_to("tareas#new")
    end

    it "routes to #show" do
      get("/tareas/1").should route_to("tareas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tareas/1/edit").should route_to("tareas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tareas").should route_to("tareas#create")
    end

    it "routes to #update" do
      put("/tareas/1").should route_to("tareas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tareas/1").should route_to("tareas#destroy", :id => "1")
    end

  end
end
