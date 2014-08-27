class CreateAsigBillDiputados < ActiveRecord::Migration
  def self.up
    create_table :asig_bill_diputados do |t|
      t.integer :bill_id
      t.integer :diputado_id

      t.timestamps
    end
  end

  def self.down
    drop_table :asig_bill_diputados
  end
end
