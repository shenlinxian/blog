json.array!(@passages) do |passage|
  json.extract! passage, :user_id, :title, :content, :catagory, :read_number, :thumber_up_number
  json.url passage_url(passage, format: :json)
end