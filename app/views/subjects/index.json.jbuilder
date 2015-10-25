json.array!(@subjects) do |subject|
  json.extract! subject, :sub_id, :sub_name, :cid, :tid
  json.url subject_url(subject, format: :json)
end
