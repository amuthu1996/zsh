json.array!(@extracurriculars) do |extracurricular|
  json.extract! extracurricular, :id, :student_id, :activity
  json.url extracurricular_url(extracurricular, format: :json)
end
