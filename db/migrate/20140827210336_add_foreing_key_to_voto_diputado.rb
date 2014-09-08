class AddForeingKeyToVotoDiputado < ActiveRecord::Migration
  def self.up
    add_index :voto_diputados, :bill_id
    add_index :voto_diputados, :diputado_id
  end

  def self.down
  end
end
