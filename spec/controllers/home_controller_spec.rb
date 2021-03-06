require 'rails_helper'

RSpec.describe HomeController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

end
