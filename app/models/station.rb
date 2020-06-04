class Station < ApplicationRecord
  belongs_to :property
  validates :line_near, length:{ maximum: 20 }
  validates :station_near, length: { maximum: 30 }
  validates :minutes_needed, numericality:{ only_integer:true, greater_than_or_equal_to: 0 }, length:{ maximum: 4 }
end
