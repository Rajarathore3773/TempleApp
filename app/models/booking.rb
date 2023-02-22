class Booking < ApplicationRecord
    belongs_to :temple

    
    validates :bookingdate, presence: true
    validates :checkoutdate, presence: true
    
    validates :temple_id , presence: true
end
