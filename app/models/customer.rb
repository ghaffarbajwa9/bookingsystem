class Customer < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :employee, through: :appointments
end
