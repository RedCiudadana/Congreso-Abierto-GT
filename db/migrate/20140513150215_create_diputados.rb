class CreateDiputados < ActiveRecord::Migration
  def self.up
    create_table :diputados do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :diputados
  end
end
