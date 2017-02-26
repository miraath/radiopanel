namespace :actionpack_cache_force_expire do
  desc "Remove cache after 10"
  task expire: :environment do
  	cache_folder = Rails.application.config.action_controller.page_cache_directory
  	puts cache_folder
  	FileUtils.rm_rf("#{cache_folder}/.", secure: true)
  end

end
