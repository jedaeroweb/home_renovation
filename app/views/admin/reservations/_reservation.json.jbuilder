json.extract! review, :id, :user_id, company_id, :rating, :title, :enable, :created_at, :updated_at
json.url admin_review_url(review, format: :json)
