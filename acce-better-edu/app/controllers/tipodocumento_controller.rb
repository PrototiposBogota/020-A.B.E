class TipodocumentoController < ApplicationController

  before_action :authenticate_user!
  before_action :set_tipo_documento, only: [:edit, :update]

  def index
    @tipo_documentos = TipoDocumento.all
  end

  def new
  end

  def create

    validar = TipoDocumento.find_by(nombre: request_params[:nombre])

    if validar.nil?

      tipoDocumento = TipoDocumento.new(request_params)

      response = tipoDocumento.save

      if response

        render json: {
            estado: 0,
            mensaje: "Success: El tipo documento fue creado correctamente"
        }
      else

        render json: {
            estado: 1,
            mensaje: "Error: No se pudo crear el tipo documento"
        }
      end

    else
      render json: {
          estado: 1,
          mensaje: "Error: El tipo documento ya existe descripción: " + validar.descripcion
      }
    end

  end

  def edit
  end

  def update

    response = @tipo_documento.update(request_params);

    if response

      render json: {
          estado: 0,
          mensaje: "Success: El tipo documento fue actualizado correctamente"
      }
    else

      render json: {
          estado: 1,
          mensaje: "Error: No se pudo actualizar el tipo documento"
      }
    end

  end

  private
  def set_tipo_documento
    @tipo_documento = TipoDocumento.find(params[:id])
  end

  def request_params
    params.require(:tipodocumento).permit(
        :nombre,
        :descripcion
    )
  end
end
