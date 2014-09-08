class AsigComission < ActiveRecord::Base
  belongs_to :diputados
  belongs_to :comissions
end
