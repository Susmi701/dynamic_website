class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: { in: 8..20 }
    validates :password , presence: true , length: { in: 6..20 }
    # validates :password_confirmation , presence: true
    validates :first_name , presence: true , length: { minimum: 1 }
    validates :last_name , presence: true , length: { minimum: 1 }
    validates :phone_number , presence: true, format: { with: /\A\d{10}\z/, message: "only allows 10 digits" }
    validates :dob , presence: true
    validates :role , presence: true
    validates :bio , length: { maximum: 1500 }
end
# length: { is: 10 }