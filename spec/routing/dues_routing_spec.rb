require "spec_helper"

describe DuesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dues").to route_to("dues#index")
    end

    it "routes to #new" do
      expect(:get => "/dues/new").to route_to("dues#new")
    end

    it "routes to #show" do
      expect(:get => "/dues/1").to route_to("dues#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dues/1/edit").to route_to("dues#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dues").to route_to("dues#create")
    end

    it "routes to #update" do
      expect(:put => "/dues/1").to route_to("dues#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dues/1").to route_to("dues#destroy", :id => "1")
    end

  end
end
