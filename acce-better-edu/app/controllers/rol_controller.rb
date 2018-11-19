class RolController < ApplicationController

  before_action :authenticate_user!
  before_action :set_rol, only: [:edit, :update]

  def index
    @roles = Rol.all
  end

  def new
  end

  def create

    validar = Rol.find_by(nombre: request_params[:nombre])

    if validar.nil?

      rol = Rol.new(request_params)

      response = rol.save

      if response

        render json: {
            estado: 0,
            mensaje: "Success: El Rol fue creado correctamente"
        }
      else

        render json: {
            estado: 1,
            mensaje: "Error: No se pudo crear el rol"
        }
      end

    else
      render json: {
          estado: 1,
          mensaje: "Error: El rol ya existe descripción: " + validar.descripcion
      }
    end

  end

  def edit
  end

  def update

    response = @rol.update(request_params);

    if response

      render json: {
          estado: 0,
          mensaje: "Success: El rol fue actualizado correctamente"
      }
    else

      render json: {
          estado: 1,
          mensaje: "Error: No se pudo actualizar el rol"
      }
    end

  end

  private

  def set_rol
    @rol = Rol.find(params[:id])
  end

  def request_params
    params.require(:rol).permit(
        :nombre,
        :menu,
        :descripcion
    )
  end
end
