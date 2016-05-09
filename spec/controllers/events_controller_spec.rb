require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  describe "GET index" do
    it "renders the index page" do
      get :index
      expect(response).to render_template("index")
    end

    it "has a 200 status code when visiting the index page" do
      get :index
      expect(response.status).to eq(200)
    end
  end

end
