class UniversidadController < ApplicationController

  before_action :authenticate_user!
  #protect_from_forgery unless: -> {request.format.json?}
  before_action :set_universidad, only: [:edit, :update]

  def index
    @univerdades = Universidad.all
  end

  def new
  end

  def create

    validar = Universidad.find_by(ciudad_id: request_params[:ciudad_id], nit: request_params[:nit])

    if validar.nil?

      universidad = Universidad.new(request_params)

      response = universidad.save

      if response

        render json: {
            estado: 0,
            mensaje: "Success: La universidad fue creada correctamente"
        }
      else

        render json: {
            estado: 1,
            mensaje: "Error: No se pudo crear la universidad"
        }
      end

    else
      render json: {
          estado: 1,
          mensaje: "Error: El nit ya existe con la universidad: " + validar.nombre
      }
    end

  end

  def edit
  end

  def update

    response = @univerdad.update(request_params)

    if response

      render json: {
          estado: 0,
          mensaje: "Success: La universidad fue actualizar correctamente"
      }
    else

      render json: {
          estado: 1,
          mensaje: "Error: No se pudo actualizar la universidad"
      }
    end

  end

  private
  def set_universidad
    @univerdad = Universidad.find(params[:id])
  end

  def request_params
    params.require(:universidad).permit(
        :ciudad_id,
        :nit,
        :nombre,
        :dereccion,
        :telefono,
        :estado
    )
  end
end
