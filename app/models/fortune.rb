class Fortune < ActiveRecord::Base

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |fortune|
        csv << fortune.attributes.values_at(*column_names)
      end
    end
  end

  def to_csv
    CSV.generate do |csv|
      csv << ['id', 'quotation', 'source']
      csv << [self.id, self.quotation, self.source]
    end
  end

end
