json.array!(@cls) do |cl|
  json.extract! cl, :id, :std, :sec, :teacher_id, :room
  json.url cl_url(cl, format: :json)
end
