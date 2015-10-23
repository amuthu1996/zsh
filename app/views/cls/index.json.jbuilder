json.array!(@cls) do |cl|
  json.extract! cl, :id, :cid, :std, :sec, :tid, :room
  json.url cl_url(cl, format: :json)
end
