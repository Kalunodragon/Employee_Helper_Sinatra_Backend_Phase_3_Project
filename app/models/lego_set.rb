class LegoSet < ActiveRecord::Base
    has_many :notes
    has_many :owners, through: :notes
    belongs_to :theme
end