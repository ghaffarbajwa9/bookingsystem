class Customer < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :employees, through: :appointments
end
