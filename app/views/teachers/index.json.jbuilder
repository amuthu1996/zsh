json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :tname, :doj, :gender, :exp, :ph, :address
  json.url teacher_url(teacher, format: :json)
end
