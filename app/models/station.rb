class Station < ApplicationRecord
  belongs_to :property
  validates :line_near, length:{ maximum: 20 }
  validates :station_near, length: { maximum: 30 }
  validates :minutes_needed, length: { maximum: 4 }
end
