class DepartamentoController < ApplicationController

  before_action :authenticate_user!
  before_action :set_departamento, only: [:edit, :update]

  def index
    @departamentos = Departamento.all
  end

  def new
  end

  def create
    request_params = params.require(:departamento).permit(
        :codigo,
        :nombre,
        :descripcion
    )

    validar = Departamento.find_by(codigo: request_params[:codigo])

    if validar.nil?

      departamento = Departamento.new(request_params)

      response = departamento.save

      if response

        render json: {
            estado: 0,
            mensaje: "Success: El departamento fue creado correctamente"
        }
      else

        render json: {
            estado: 1,
            mensaje: "Error: No se pudo crear el departamento"
        }
      end

    else
      render json: {
          estado: 1,
          mensaje: "Error: El codigo ya existe con el departamento: " + validar.nombre
      }
    end
  end

  def edit
  end

  def update
    request_params = params.require(:departamento).permit(
        :codigo,
        :nombre,
        :descripcion
    )

    response = @departamento.update(request_params);

    if response

      render json: {
          estado: 0,
          mensaje: "Success: El departamento fue actualizado correctamente"
      }
    else

      render json: {
          estado: 1,
          mensaje: "Error: No se pudo actualizar el departamento"
      }
    end

  end

  private

  def set_departamento
    @departamento = Departamento.find(params[:id])
  end

end
