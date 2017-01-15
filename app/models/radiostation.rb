class Radiostation < ApplicationRecord
	has_attached_file :logo
	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

	def live_info
		raw_live_info = self.fetch_live_info
		live_info = {
			listeners_count: raw_live_info['listeners'],
			current_playing: raw_live_info['song'],
			is_live: raw_live_info['song'].include?('مباشر')
		}
	end

  def fetch_live_info
    url = URI(self.json_url)
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url)
    response = http.request(request)
    response.read_body
    obj = JSON.parse response.read_body
    obj = obj["data"][0]
  end

end
