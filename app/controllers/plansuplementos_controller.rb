class PlansuplementosController < ApplicationController
  before_action :require_user
  before_action :set_plansuplemento, only: [:show, :edit, :update, :destroy]

  # GET /plansuplementos
  # GET /plansuplementos.json
  def index
    @plansuplementos = Plansuplemento.all
  end

  # GET /plansuplementos/1
  # GET /plansuplementos/1.json
  def show
  end

  # GET /plansuplementos/new
  def new
    @plansuplemento = Plansuplemento.new
  end

  # GET /plansuplementos/1/edit
  def edit
  end

  # POST /plansuplementos
  # POST /plansuplementos.json
  def create
    @plansuplemento = Plansuplemento.new(plansuplemento_params)

    respond_to do |format|
      if @plansuplemento.save
        format.html { redirect_to @plansuplemento, notice: 'Plansuplemento was successfully created.' }
        format.json { render :show, status: :created, location: @plansuplemento }
      else
        format.html { render :new }
        format.json { render json: @plansuplemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plansuplementos/1
  # PATCH/PUT /plansuplementos/1.json
  def update
    respond_to do |format|
      if @plansuplemento.update(plansuplemento_params)
        format.html { redirect_to @plansuplemento, notice: 'Plansuplemento was successfully updated.' }
        format.json { render :show, status: :ok, location: @plansuplemento }
      else
        format.html { render :edit }
        format.json { render json: @plansuplemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plansuplementos/1
  # DELETE /plansuplementos/1.json
  def destroy
    @plansuplemento.destroy
    respond_to do |format|
      format.html { redirect_to plansuplementos_url, notice: 'Plansuplemento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_plansuplemento
    @plansuplemento = Plansuplemento.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def plansuplemento_params
    params.require(:plansuplemento).permit(:paciente_id, :suplemento_id, :frecuencia, :cantidad, :inicio, :fin)
  end
end
