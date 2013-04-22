require "spec_helper"

describe MotosController do
  describe "routing" do

    it "routes to #index" do
      get("/motos").should route_to("motos#index")
    end

    it "routes to #new" do
      get("/motos/new").should route_to("motos#new")
    end

    it "routes to #show" do
      get("/motos/1").should route_to("motos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/motos/1/edit").should route_to("motos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/motos").should route_to("motos#create")
    end

    it "routes to #update" do
      put("/motos/1").should route_to("motos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/motos/1").should route_to("motos#destroy", :id => "1")
    end

  end
end
