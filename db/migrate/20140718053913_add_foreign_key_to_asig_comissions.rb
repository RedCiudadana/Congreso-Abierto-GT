class AddForeignKeyToAsigComissions < ActiveRecord::Migration
  def self.up
    add_index :asig_comissions, :diputado_id
    add_index :asig_comissions, :comission_id
  end

  def self.down
  end
end
