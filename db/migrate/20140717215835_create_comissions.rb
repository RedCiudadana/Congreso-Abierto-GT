class CreateComissions < ActiveRecord::Migration
  def self.up
    create_table :comissions do |t|
      t.string :nombre
      t.string :descripcion
      t.string :direccion
      t.string :telefono
      t.string :ext
      t.boolean :activa

      t.timestamps
    end
  end

  def self.down
    drop_table :comissions
  end
end
