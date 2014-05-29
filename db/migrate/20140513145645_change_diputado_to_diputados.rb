class ChangeDiputadoToDiputados < ActiveRecord::Migration
   def self.up
  #A continuacion se renombra la tabla people
    rename_table :diputado, :diputados
  end

  def self.down
    rename_table :diputados, :diputado
  end
end
