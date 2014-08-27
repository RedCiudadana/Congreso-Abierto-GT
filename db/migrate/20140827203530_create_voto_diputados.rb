class CreateVotoDiputados < ActiveRecord::Migration
  def self.up
    create_table :voto_diputados do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :voto_diputados
  end
end
