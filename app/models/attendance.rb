class Attendance < ApplicationRecord
  include Visible
  belongs_to :employee
  
end
