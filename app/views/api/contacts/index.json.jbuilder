json.array! @contacts.each do |contact|
json.id contact.id
json.full_name contact.full_name
json.first_name contact.first_name
json.middle_name contact.middle_name
json.last_name  contact.last_name
json.phone_number contact.phone_number
json.email contact.email
json.bio contact.bio
json.created_at contact.friendly_updated_at
end


