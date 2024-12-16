CarrierWave.configure do |config|
  config.storage = :file
  config.cache_dir = File.join(Rails.root, 'tmp', 'uploads', Rails.env)
end
