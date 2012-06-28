require 'spec_helper'

describe OmniAuth::Strategies::SingleSignon do
  subject do
    OmniAuth::Strategies::SingleSignon.new({})
  end

  context "client options" do
    it 'should have correct name' do
      subject.options.name.should eq("investopresto")
    end

    it 'should have correct site' do
      subject.client.site.should eq('http://login.investopresto.com')
    end

    it 'should have correct authorize url' do
      subject.client.options[:authorize_url].should eq('/oauth/authorize')
    end

    it 'has correct token url' do
      subject.client.options[:token_url].should eq('/oauth/token')
    end
  end
end
