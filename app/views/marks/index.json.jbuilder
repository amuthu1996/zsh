json.array!(@marks) do |mark|
  json.extract! mark, :id, :sid, :sub_id, :quarter, :half, :ann
  json.url mark_url(mark, format: :json)
end
