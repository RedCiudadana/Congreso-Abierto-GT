class CreateAsigComissions < ActiveRecord::Migration
  def self.up
    create_table :asig_comissions do |t|
      t.integer :diputado_id
      t.integer :comission_id

      t.timestamps
    end
  end

  def self.down
    drop_table :asig_comissions
  end
end
