class Employee < ApplicationRecord
    include Visible

    has_many :attendances, dependent: :destroy
    has_many :appointments, dependent: :destroy
    has_many :customers, through: :appointments
    # validates :name, presence: true
    # validates :email, presence: true
    # validates :phone, presence: true
    # validates :emptype, presence: true

end
