class Enquiry < ApplicationRecord
    validates :name , presence: true , length: { minimum: 3 }
    validates :email , presence: true
    validates :message , presence: true , length: { minimum: 50 }
end
