class AddAsistenaciaToDiputado < ActiveRecord::Migration
  def self.up
    #A continuacion modificamos la tabla 
    change_table :diputados do |a|
      #A continuacion se agregan campos nuevos
      a.integer :asistencia
    end
  end

  def self.down
  end
end
