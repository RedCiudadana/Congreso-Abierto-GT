class ChangePeopleTable < ActiveRecord::Migration
def self.up   
    #A continuacion modificamos la tabla 
    change_table :people do |a|
      #A continuacion se renombran atributos ya existentes
      a.rename :firstname, :nombre
      a.rename :lastname, :apellido
      a.rename :phone, :telefono
      a.rename :email, :correo
      #A continuacion se agregan campos nuevos
      a.string :partido, :partido_actual, :postulante, :direccion, :ext, :departamento
    end
  end

  def self.down
    #A continuacion volvemos los valores antiguos 
    change_table :people do |a|
      a.remove :partido, :partido_actual, :postulante, :direccion, :ext, :departamento
      a.rename :nombre, :firstname 
      a.rename :apellido, :lastname 
      a.rename :telefono, :phone
      a.rename :correo, :email
    end
    
    
  end
end
