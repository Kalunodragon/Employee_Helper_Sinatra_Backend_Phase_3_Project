class Theme < ActiveRecord::Base
    has_many :lego_sets
    has_many :notes, through: :lego_sets
end