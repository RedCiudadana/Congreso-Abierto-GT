class Comission < ActiveRecord::Base
  has_many :asig_comissions
  has_many :diputados, :through => :asig_comissions
  
  has_many :asig_bill_comission
  has_many :bill, :through => :asig_bill_comission
end
