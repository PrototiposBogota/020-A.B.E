class PersonaController < ApplicationController

  before_action :authenticate_user!
  before_action :set_persona, only: [:edit, :update]

  def index
    @personas = Persona.all
  end

  def new
  end

  def create

  end

  def edit

  end

  def update

  end

  private
  def set_persona
    @persona = Persona.find(params[:id])
  end
end
