class Bill < ActiveRecord::Base    
  has_many :asig_bill_diputados
  has_many :diputado, :through => :asig_bill_diputados
  
  has_many :voto_diputados
  has_many :diputado, :through => :voto_diputados
end
