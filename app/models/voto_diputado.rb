class VotoDiputado < ActiveRecord::Base
  belongs_to :bill
  belongs_to :diputados
end
