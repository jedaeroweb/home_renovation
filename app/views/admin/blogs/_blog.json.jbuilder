json.extract! blog, :id, :title, :enable, :created_at, :updated_at
json.url admin_blog_url(notice, format: :json)
