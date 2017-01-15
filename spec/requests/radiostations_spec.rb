require 'rails_helper'

RSpec.describe "Radiostations", type: :request do

  describe "GET/POST/PUT/DELETE radiostations" do
    it "Does not allow anonymous to access create radios" do
      get new_radiostation_path
      post new_radiostation
      put new_radiostation_path
      delete new_radiostation_path
      expect(response).to have_http_status(302)
    end
  end

  describe "POST /radiostations" do
    it "Does not allow anonymous to access create radios" do
      get new_radiostation_path
      expect(response).to have_http_status(400)
    end
  end
end
