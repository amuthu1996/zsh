json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :sid, :attend
  json.url attendance_url(attendance, format: :json)
end
