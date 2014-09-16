json.array!(@ad_formats) do |ad_format|
  json.extract! ad_format, :id, :name
  json.url ad_format_url(ad_format, format: :json)
end
