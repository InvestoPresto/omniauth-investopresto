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

    context "callback_url" do
      before(:each) do
        subject.should_receive(:full_host).and_return('http://example.com')
        subject.should_receive(:script_name).and_return('')
      end
      it 'should have correct callback url' do
        subject.callback_url.should eq('http://example.com/auth/signout/callback')
      end

      it 'has correct single_signout_url' do
        subject.single_signout_url.should eq 'http://login.investopresto.com/signout?redirect_uri=http%3A%2F%2Fexample.com%2Fauth%2Fsignout%2Fcallback'
      end
    end
  end
end
