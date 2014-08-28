class Diputado < ActiveRecord::Base
  has_many :asig_comissions
  has_many :comissions, :through => :asig_comissions
  
  has_many :asig_bill_diputados
  has_many :bill, :through => :asig_bill_diputados
  
  has_many :voto_diputados
  has_many :bill, :through => :voto_diputados
end
