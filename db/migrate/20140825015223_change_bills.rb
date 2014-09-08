class ChangeBills < ActiveRecord::Migration
  def self.up
      #A continuacion modificamos la tabla 
      change_table :bills do |a|
      #A continuacion se renombran atributos ya existentes
      a.rename :number, :registro
      #A continuacion se agregan campos nuevos
      a.string :contenido
      a.date :fecha_ingreso
    end
  end

  def self.down
  end
end
