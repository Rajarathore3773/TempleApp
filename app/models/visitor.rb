class Visitor < ApplicationRecord
    belongs_to :temple

    

    validates :v_name, presence: true
    validates :v_age, presence: true
    validates :v_email, presence: true
    validates :v_govermentid, presence: true
    validates :v_contact , presence: true
    
    validates :temple_id , presence: true
end
