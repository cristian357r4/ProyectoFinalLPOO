# frozen_string_literal: true
class SuplementosController < ApplicationController
  before_action :require_user
  before_action :set_suplemento, only: %i[show edit update destroy]

  # GET /suplementos
  # GET /suplementos.json
  def index
    @suplementos = Suplemento.all
  end

  # GET /suplementos/1
  # GET /suplementos/1.json
  def show; end

  # GET /suplementos/new
  def new
    @suplemento = Suplemento.new
  end

  # GET /suplementos/1/edit
  def edit; end

  # POST /suplementos
  # POST /suplementos.json
  def create
    @suplemento = Suplemento.new(suplemento_params)

    respond_to do |format|
      if @suplemento.save
        format.html { redirect_to @suplemento, notice: 'Suplemento agregado.' }
        format.json { render :show, status: :created, location: @suplemento }
      else
        format.html { render :new }
        format.json { render json: @suplemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suplementos/1
  # PATCH/PUT /suplementos/1.json
  def update
    respond_to do |format|
      if @suplemento.update(suplemento_params)
        format.html { redirect_to @suplemento, notice: 'Informacion de Suplemento Actualizado.' }
        format.json { render :show, status: :ok, location: @suplemento }
      else
        format.html { render :edit }
        format.json { render json: @suplemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suplementos/1
  # DELETE /suplementos/1.json
  def destroy
    @suplemento.destroy
    respond_to do |format|
      format.html { redirect_to suplementos_url, notice: 'Suplemento Eliminado.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_suplemento
    @suplemento = Suplemento.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def suplemento_params
    params.require(:suplemento).permit(:nombre, :marca, :precio, :contenido, :informacion, :image)
  end
end
