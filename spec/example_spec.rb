require 'spec_helper'

set :environment , :test 

describe 'ExchangeApplication' do

  it "should load the home page" do
    get '/'
    expect(last_response).to be_ok
  end

  it "should load the home page" do
    get '/history'
    expect(last_response).to be_ok
  end
  

  it "should load the home page" do
    get '/result?fromvalue=4444&exchange=0'
    expect(last_response).to be_ok
  end


  # todo: Add more tests here

end