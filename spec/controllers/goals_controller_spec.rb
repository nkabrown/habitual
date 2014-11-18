require 'rails_helper'

RSpec.describe GoalsController, :type => :controller do

  describe "GET new" do
    it "should respond successfully with an HTTP 200 code" do
      get :new

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "should render the new template" do
      get :new

      expect(response).to render_template(:new)
    end

    it "assigns a new goal as @goal" do
      get :new, {}, attributes_for(:goal)

      expect(assigns(:goal)).to be_a_new(Goal)
    end
  end
end
