class Property < ApplicationRecord
  validates :name, presence:true, length:{ maximum: 20 }
  validates :rent, presence:true, numericality:{ only_integer:true, greater_than: 0 }, length:{ maximum: 7 }
  validates :place, presence:true, length:{ maximum: 45 }
  validates :old, presence:true, numericality:{ only_integer:true, greater_than_or_equal_to: 0 }, length:{ maximum: 3 }
  validates :comment, length:{ maximum: 255 }
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations,reject_if: :all_blank, allow_destroy: true

  def reject_empty_station
    line_near = attributes[:line_near].nil?
    station_near = attributes[:station_near].nil?
    minutes_needed = attributes[:minutes_needed].nil?
    attributes.merge!(_destroy:"1") if line_near && station_near && minutes_needed
  end
end
