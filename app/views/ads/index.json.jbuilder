json.array!(@ads) do |ad|
  json.extract! ad, :id, :magazine_id, :vendor, :copy
  json.url ad_url(ad, format: :json)
end
