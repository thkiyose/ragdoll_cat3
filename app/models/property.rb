class Property < ApplicationRecord
  validates :name, presence:true, length:{ maximum: 20 }
  validates :rent, presence:true, numericality:{ only_integer:true, greater_than: 0 }, length:{ maximum: 7 }
  validates :place, presence:true, length:{ maximum: 45 }
  validates :old, presence:true, numericality:{ only_integer:true, greater_than_or_equal_to: 0 }, length:{ maximum: 3 }
  validates :comment, length:{ maximum: 255 }
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations,reject_if: :all_blank, allow_destroy: true
end
