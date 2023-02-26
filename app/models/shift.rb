class Shift < ActiveRecord::Base
    has_many :bids
    has_many :employees, through: :bids
end