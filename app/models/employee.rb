class Employee < ActiveRecord::Base
    belongs_to :station
    has_many :bids
    has_many :shifts, through: :bids

    def show_bid_times
        bids.map do |day|
            puts day.shifts.start_time
        end
    end
end