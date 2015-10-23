json.array!(@students) do |student|
  json.extract! student, :id, :sid, :sname, :dob, :gender, :cid, :fname, :mname, :ph, :address
  json.url student_url(student, format: :json)
end
