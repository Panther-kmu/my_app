require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the StaticPagesHelper. For example:
#
# describe StaticPagesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe StaticPagesHelper do
  describe "full_title" do

    it "should return base title if input is empty" do
      helper.full_title('').should == 'Ruby on Rails Tutorial My App'
    end

    it "should return base title appended with input if input is not empty" do
      helper.full_title('foo').should == 'Ruby on Rails Tutorial My App | foo'
    end

  end
end
