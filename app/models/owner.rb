class Owner < ActiveRecord::Base
    has_many :notes
    has_many :lego_sets, through: :notes
end