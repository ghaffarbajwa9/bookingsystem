module Visible
 extend ActiveSupport::Concern 
 VALID_EMPTYPES = ['barbar','accountant', 'admin']

 included do
    validates :emptype, inclusion: {in: VALID_EMPTYPES}
end
end