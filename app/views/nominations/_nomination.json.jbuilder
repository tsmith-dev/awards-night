json.extract! nomination, :id, :show_id, :category_id, :nominee, :created_at, :updated_at
json.url nomination_url(nomination, format: :json)