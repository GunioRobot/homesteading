require "spec_helper"

describe StatusesController do
  describe "GET #new" do
    it "succeeds" do
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

    describe "invalid params" do
      it "fails to create a status" do
        long_status = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        expect { post :create, :status => { :content => long_status } }.should_not change(Status, :count)
        response.should render_template("new")
      end
    end
  end

  describe "#index" do
    it "succeeds" do
      get :index
      response.should be_success
    end

    it "assigns a set of statuses" do
      get :index
      assigns(:statuses).should_not be_nil
    end

    it "orders the list by latest first" do
      %w(foo bar baz).each_with_index do |content, index|
        status            = Status.new
        status.content    = content
        status.created_at = Date.today + index
        status.save
      end

      get :index
      assigns(:statuses).collect(&:content).should == %w(baz bar foo)
    end
  end
end
