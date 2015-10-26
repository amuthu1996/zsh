json.array!(@students) do |student|
  json.extract! student, :id, :sname, :dob, :gender, :cl_id, :fname, :mname, :ph, :address
  json.url student_url(student, format: :json)
end
