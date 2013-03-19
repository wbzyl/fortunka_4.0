response.headers["Content-Disposition"] = 'attachment; filename="fortunes.csv"'

CSV.generate do |csv|
  csv << ["id", "quotation", "source"]
  @fortunes.each do |fortune|
    csv << [
      fortune.id,
      fortune.quotation,
      fortune.source
    ]
  end
end
