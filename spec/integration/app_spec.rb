require 'spec_helper'
require "rack/test"
require_relative '../../app'

describe Application do
  include Rack::Test::Methods


  let(:app) { Application.new }

  context "GET /hello" do
    it 'returns 200 OK' do
      
      response = get('/hello?name=Leo')

      expect(response.status).to eq(200)
      expect(response.body).to eq("Hello Leo")
    end

    it 'returns 404 Not Found' do
      response = get('/posts?id=276278')

      expect(response.status).to eq(404)
      # expect(response.body).to eq(expected_response)
    end

  end

end