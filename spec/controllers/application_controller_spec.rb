require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  context 'GET about' do
    it "has a 200 status code" do
      get :about
      expect(response.status).to eq(200)
    end
  end

  context 'GET contact' do
    it "has a 200 status code" do
      get :contact
      expect(response.status).to eq(200)
    end
  end
end
