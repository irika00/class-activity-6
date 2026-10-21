# app/models/ticket.rb
class Ticket < ApplicationRecord
  belongs_to :attendee
  belongs_to :festival

  validates :tier, presence: true
  validates :price_cents, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
