require "spec_helper"

describe EsolGroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/esol_groups").should route_to("esol_groups#index")
    end

    it "routes to #new" do
      get("/esol_groups/new").should route_to("esol_groups#new")
    end

    it "routes to #show" do
      get("/esol_groups/1").should route_to("esol_groups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/esol_groups/1/edit").should route_to("esol_groups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/esol_groups").should route_to("esol_groups#create")
    end

    it "routes to #update" do
      put("/esol_groups/1").should route_to("esol_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/esol_groups/1").should route_to("esol_groups#destroy", :id => "1")
    end

  end
end
