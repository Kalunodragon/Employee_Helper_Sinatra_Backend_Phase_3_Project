class Owner < ActiveRecord::Base
    has_many :notes
    has_many :lego_sets, through: :notes

    def total_lego_peices
        total = 0
        self.lego_sets.each do |set|
            total += set.peices
        end
        total
    end

    def owned_themes
        array = []
        self.lego_sets.each do |e|
            array << e.theme unless array.include?(e.theme)
        end
        array
    end
end