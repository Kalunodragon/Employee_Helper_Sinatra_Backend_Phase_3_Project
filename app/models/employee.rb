class Employee < ActiveRecord::Base
    belongs_to :station
    has_many :bids
    has_many :shifts, through: :bids
end