json.array!(@attendances) do |attendance|
  json.extract! attendance, :student_id, :attend
  json.url attendance_url(attendance, format: :json)
end
