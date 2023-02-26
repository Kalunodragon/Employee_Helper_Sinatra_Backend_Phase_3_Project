class Station < ActiveRecord::Base
    has_many :employees
    has_many :bids, through: :employees
end