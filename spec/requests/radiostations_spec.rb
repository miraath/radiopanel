require 'rails_helper'

RSpec.describe "Radiostations", type: :request do
  describe "GET /radiostations" do
    it "works! (now write some real specs)" do
      get radiostations_path
      expect(response).to have_http_status(200)
    end
  end
end
