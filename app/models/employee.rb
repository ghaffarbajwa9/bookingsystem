class Employee < ApplicationRecord
    include Visible
    has_many :attendances
    has_many :appointments
    has_many :customers, through: :appointments
    # validates :name, presence: true
    # validates :email, presence: true
    # validates :phone, presence: true
    # validates :emptype, presence: true

end
