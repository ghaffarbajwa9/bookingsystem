module Visible
 extend ActiveSupport::Concern 
 VALID_EMPTYPES = ['barbar','accountant', 'admin']
 ATTENDANCE_STATUS = ["Present", "Leave"]

 included do
    validates :emptype, inclusion: {in: VALID_EMPTYPES}
    validates :status, inclusion: {in: ATTENDANCE_STATUS}
end
end