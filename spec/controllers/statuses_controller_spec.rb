require "spec_helper"

describe StatusesController do
  describe "GET #new" do
    it "succeds" do
      get :new
      response.should be_success
    end

    it "assigns a new Status object" do
      get :new
      assigns(:status).should be_new_record
    end
  end
  
  describe "#create" do
    it "creates a status" do
      expect { post :create, :status => { :content => "My first toot!" } }.should change(Status, :count).by(1)
    end
    
    it "redirects to #index" do
      post :create, :status => { :content => "My first toot!" }
      response.should redirect_to statuses_path
    end
  end
  
  describe "#index" do
    it "succeeds" do
      get :index
    end
  end
end