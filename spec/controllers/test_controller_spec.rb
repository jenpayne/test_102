require 'spec_helper'

describe TestController do
  let(:json_response) { ActiveSupport::HashWithIndifferentAccess.new(JSON.parse(response.body)) }

  describe "#index" do

    before(:each) do
      post(:index)
    end

    it "shoud return 102" do
    	json_response[:message].should eql('hello')
    	response.status.should == 102
    end
  end
end
