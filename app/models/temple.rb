class Temple < ApplicationRecord
    has_many :visitor
    has_many :booking

    

    validates :t_name, presence: true
    validates :t_lordname, presence: true
    validates :t_location, presence: true
    validates :t_description, presence: true

end
