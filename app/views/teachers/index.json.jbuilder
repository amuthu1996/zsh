json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :tid, :tname, :doj, :gender
  json.url teacher_url(teacher, format: :json)
end
