class CreateDiputados2s < ActiveRecord::Migration
  def self.up
    create_table :diputados2s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :diputados2s
  end
end
