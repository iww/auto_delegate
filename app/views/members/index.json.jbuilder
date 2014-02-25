json.array!(@members) do |member|
  json.extract! member, :id, :first_name, :last_name, :address1, :address2, :city, :state, :postal_code, :country, :email, :telephone, :employer, :occupation, :mail_iw, :general_defense, :initiated_at, :member_number, :industrial_union, :user_id
  json.url member_url(member, format: :json)
end
