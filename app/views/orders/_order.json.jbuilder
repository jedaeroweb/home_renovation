json.extract! order, :id, :enable, :created_at, :updated_at
json.pg ENV['pg']
json.merchant_uid 'order_product_'+order.id.to_s

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

json.url order_url(order, format: :json)
