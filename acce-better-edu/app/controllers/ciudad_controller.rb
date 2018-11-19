class CiudadController < ApplicationController

  before_action :authenticate_user!
  before_action :set_ciudad, only: [:edit, :update]

  def index
    @ciudades = Ciudad.all
  end

  def new
  end

  def create
    request_params = params.require(:ciudad).permit(
        :departamento_id,
        :codigo,
        :nombre,
        :descripcion
    )

    validar = Ciudad.find_by(departamento_id: request_params[:departamento_id], codigo: request_params[:codigo])

    if validar.nil?

      ciudad = Ciudad.new(request_params)

      response = ciudad.save

      if response

        render json: {
            estado: 0,
            mensaje: "Success: La ciudad fue creada correctamente"
        }
      else

        render json: {
            estado: 1,
            mensaje: "Error: No se pudo crear la ciudad"
        }
      end

    else
      render json: {
          estado: 1,
          mensaje: "Error: El codigo ya existe con la ciudad: " + validar.nombre
      }
    end
  end

  def edit
  end

  def update

    request_params = params.require(:ciudad).permit(
        :departamento_id,
        :codigo,
        :nombre,
        :descripcion
    )

    response = @ciudad.update(request_params);

    if response

      render json: {
          estado: 0,
          mensaje: "Success: La ciudad fue actualizada correctamente"
      }
    else

      render json: {
          estado: 1,
          mensaje: "Error: No se pudo actualizar La ciudad"
      }
    end

  end

  private

  def set_ciudad
    @ciudad = Ciudad.find(params[:id])
  end
end
