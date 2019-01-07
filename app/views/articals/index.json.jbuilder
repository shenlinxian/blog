json.array!(@articals) do |artical|
  json.extract! artical, :title, :category, :content, :user, :read_number, :thumber_up_number
  json.url artical_url(artical, format: :json)
end