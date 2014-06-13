class CreateListadoDiputados < ActiveRecord::Migration
  def self.up
    create_table :listado_diputados do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :listado_diputados
  end
end
