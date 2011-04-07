require 'test_helper'
require 'minitest/autorun'

class MiniTest::Spec < MiniTest::Unit::TestCase
  describe StatusesController do
    describe "GET #new" do
      it "succeeds" do
        get :new
        response.success?.must_equal true
        # true.must_equal true
      end
    end
  end
end
