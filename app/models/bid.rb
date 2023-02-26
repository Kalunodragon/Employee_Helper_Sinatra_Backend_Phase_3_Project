class Bid < ActiveRecord::Base
    belongs_to :employee
    has_many :shifts
end