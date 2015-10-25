json.array!(@teachers) do |teacher|
  json.extract! teacher, :tid, :tname, :doj, :gender, :exp, :ph, :address
  json.url teacher_url(teacher, format: :json)
end
