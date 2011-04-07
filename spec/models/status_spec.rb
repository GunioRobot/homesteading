require "spec_helper"

describe Status do
  it "is 140 characters or less" do
    Status.new(:content => "a"*140).should     be_valid
    Status.new(:content => "a"*141).should_not be_valid 
  end
end
