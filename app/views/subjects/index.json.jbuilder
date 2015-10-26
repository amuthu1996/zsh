json.array!(@subjects) do |subject|
  json.extract! subject, :id, :sub_name, :cl_id, :teacher_id
  json.url subject_url(subject, format: :json)
end
