# lib/tasks/upload_fonts_script.rb
require 'azure/storage/blob'

account_name = ENV['AZURE_STORAGE_ACCOUNT_NAME']
access_key   = ENV['AZURE_STORAGE_ACCESS_KEY']
container    = ENV['FOG_DIRECTORY']

blob_client = Azure::Storage::Blob::BlobService.create(
  storage_account_name: account_name,
  storage_access_key: access_key
)

Dir.glob('public/fonts/**/*').each do |file|
  next if File.directory?(file)
  blob_name = "fonts/" + File.basename(file)
  content = File.open(file, 'rb') { |f| f.read }
  blob_client.create_block_blob(container, blob_name, content)
  puts "Uploaded #{blob_name}"
end
