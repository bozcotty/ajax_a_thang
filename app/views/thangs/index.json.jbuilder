json.array!(@thangs) do |thang|
  json.extract! thang, :id, :name, :description
  json.url thang_url(thang, format: :json)
end
