class RenamePeopleToDiputado < ActiveRecord::Migration
  def self.up
  #A continuacion se renombra la tabla people
    rename_table :people, :diputado
  end

  def self.down
    rename_table :diputado, :people
  end
end
