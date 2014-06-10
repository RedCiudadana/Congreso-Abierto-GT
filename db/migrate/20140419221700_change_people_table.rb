class ChangePeopleTable < ActiveRecord::Migration
def self.up   
    #A continuacion modificamos la tabla 
    change_table :people do |a|
      #A continuacion se renombran atributos ya existentes
      a.rename :name, :nombre
      a.rename :phone, :telefono
      a.rename :email, :correo
      #A continuacion se agregan campos nuevos
      a.string :partido_postulante, :partido_actual, :direccion, :ext, :departamento, :url_foto, :distrito, :facebook, :twitter
    end
  end

  def self.down
    #A continuacion volvemos los valores antiguos 
    change_table :people do |a|
      a.remove :partido_postulante, :partido_actual, :direccion, :ext, :departamento, :url_foto, :distrito, :facebook, :twitter
      a.rename :nombre, :firstname
      a.rename :telefono, :phone

    end
    
    
  end
end
