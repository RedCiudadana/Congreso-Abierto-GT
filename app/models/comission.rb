class Comission < ActiveRecord::Base
  has_many :asig_comissions
  has_many :diputados, :through => :asig_comissions
end
