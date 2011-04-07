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
end