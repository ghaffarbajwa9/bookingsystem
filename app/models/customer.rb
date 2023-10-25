class Customer < ApplicationRecord
    has_many :appointments
    has_many :employee, through: :appointments
end
