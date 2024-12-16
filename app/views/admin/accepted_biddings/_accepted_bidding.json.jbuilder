json.extract! accepted_bidding, :id, :ad_id, :company_id, :enable, :created_at, :updated_at
json.url admin_notice_url(accepted_bidding, format: :json)
