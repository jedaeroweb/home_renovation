json.extract! user_point_log, :id, :enable, :created_at, :updated_at
json.pg ENV['pg']
json.merchant_uid 'charge_point_'+user_point_log.id.to_s

json.user_email user.email
json.user_name user.name
json.user_tel user.phone
json.user_addresses_count user.user_addresses_count

if user.user_addresses_count.zero?
  json.user_addr ''
  json.user_postcode ''
else
  json.user_addr user.user_address.address+' '+user.user_address.address_detail
  json.user_postcode user.user_address.postcode
end

json.url user_point_log_url(user_point_log, format: :json)

