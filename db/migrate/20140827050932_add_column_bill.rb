class AddColumnBill < ActiveRecord::Migration
  def self.up
	change_table :bills do |a|
		#A continuacion se agregan campos nuevos
      		a.string :postulante_externo
	end

  end

  def self.down
  end
end
