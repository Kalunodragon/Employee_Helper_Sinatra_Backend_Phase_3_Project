class Employee < ActiveRecord::Base
    belongs_to :station
    has_one :bid
    has_many :shifts, through: :bid
end