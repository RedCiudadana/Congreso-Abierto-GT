class DiputadosController < ApplicationController
  layout "frontpage"
  
  def perfil_diputados
      def re_perfil
        redirect_to :action => 'perfil_diputados'
      end
  end

  def mapa_distrital
    @distrito = @nom_distrito
    def re_mapa_distrital
        redirect_to :action => 'mapa_distrital'
      end
  end

  def lista_diputados
    def re_lista_diputados
        redirect_to :action => 'lista_diputados'
      end
  end
  
end