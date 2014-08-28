class CreateVotoDiputados < ActiveRecord::Migration
  def self.up
    create_table :voto_diputados do |t|
      t.integer :bill_id
      t.integer :diputado_id
      t.boolean :voto
      t.date :fecha     
      
      t.timestamps
    end
  end

  def self.down
    drop_table :voto_diputados
  end
end
