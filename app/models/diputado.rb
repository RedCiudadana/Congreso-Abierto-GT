class Diputado < ActiveRecord::Base
  has_many :asig_comissions
  has_many :comissions, :through => :asig_comissions
end
