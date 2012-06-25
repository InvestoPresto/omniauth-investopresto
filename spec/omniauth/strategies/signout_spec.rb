require 'spec_helper'

describe OmniAuth::Strategies::Signout do
  subject do
    OmniAuth::Strategies::Signout.new({})
  end

  context "client options" do
    it 'should have correct name' do
      subject.options.name.should eq("signout")
    end

    it 'should have correct site' do
      subject.options.site.should eq('http://login.investopresto.com')
    end

    pending 'should have correct callback url' do
      subject.callback_url.should eq('/auth/signout/callback')
    end

    pending 'has correct single_signout_url' do
      subject.single_signout_url.should eq 'http://login.investopresto.com/signout?redirect_uri=%2Fauth%2Fsignout%2Fcallback'
    end
  end
end
