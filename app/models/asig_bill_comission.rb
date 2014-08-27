class AsigBillComission < ActiveRecord::Base
  belongs_to :bill
  belongs_to :comissions
end
