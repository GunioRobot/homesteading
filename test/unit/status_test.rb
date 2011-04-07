require 'test_helper'
require 'minitest/autorun'

class MiniTest::Spec < MiniTest::Unit::TestCase
  describe Status do
    it "is sane" do
      true.must_equal true
    end    
    it "is 140 characters or less" do
      Status.new(:content => "a"*140).valid?.must_equal true      
      Status.new(:content => "a"*141).valid?.must_equal false      
    end
  end
end
