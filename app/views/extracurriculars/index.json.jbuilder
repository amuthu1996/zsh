json.array!(@extracurriculars) do |extracurricular|
  json.extract! extracurricular, :id, :sid, :activity
  json.url extracurricular_url(extracurricular, format: :json)
end
