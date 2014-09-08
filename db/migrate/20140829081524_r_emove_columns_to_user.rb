class REmoveColumnsToUser < ActiveRecord::Migration
  def self.up
    #A continuacion modificamos la tabla 
    change_table :users do |a|
      #A continuación se eliminan campos innecesarios 
      a.remove :admin, :zipcode
    end
  end

  def self.down
  end
end
