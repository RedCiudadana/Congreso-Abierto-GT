class AddForeignKeyToAsigBillDiputados < ActiveRecord::Migration
  def self.up
    add_index :asig_bill_diputados, :bill_id
    add_index :asig_bill_diputados, :diputado_id
  end

  def self.down
  end
end
