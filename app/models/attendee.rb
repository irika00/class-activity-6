class Attendee < ApplicationRecord
    has_many :tickets, dependent: :destroy
    validates :name, presence: true
    validates :email, presence: true
end