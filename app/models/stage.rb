class Stage < ApplicationRecord
    belongs_to :festival
  
    validates :name, presence: true
    validates :capacity, numericality: { only_integer: true, greater_than: 0 }
  end