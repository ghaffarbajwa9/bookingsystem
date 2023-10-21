class Employee < ApplicationRecord
    include Visible
    validates :name, presence: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :emptype, presence: true

end
