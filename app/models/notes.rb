class Note < ActiveRecord::Base
    belongs_to :owner
    belongs_to :lego_set
end