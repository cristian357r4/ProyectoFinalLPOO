class BiometriasController < ApplicationController
  before_action :require_user
  before_action :set_biometria, only: [:show, :edit, :update, :destroy]

  # GET /biometrias
  # GET /biometrias.json
  def index
    @biometrias = Biometria.all
  end

  # GET /biometrias/1
  # GET /biometrias/1.json
  def show
  end

  # GET /biometrias/new
  def new
    @biometria = Biometria.new
  end

  # GET /biometrias/1/edit
  def edit
  end

  # POST /biometrias
  # POST /biometrias.json
  def create
    @biometria = Biometria.new(biometria_params)

    respond_to do |format|
      if @biometria.save
        format.html { redirect_to @biometria }
        flash[:notice] = 'Registro creado Exitosamente'
        format.json { render :show, status: :created, location: @biometria }
      else
        format.html { render :new }
        format.json { render json: @biometria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biometrias/1
  # PATCH/PUT /biometrias/1.json
  def update
    respond_to do |format|
      if @biometria.update(biometria_params)
        format.html { redirect_to @biometria, notice: 'Biometria was successfully updated.' }
        format.json { render :show, status: :ok, location: @biometria }
      else
        format.html { render :edit }
        format.json { render json: @biometria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biometrias/1
  # DELETE /biometrias/1.json
  def destroy
    @biometria.destroy
    respond_to do |format|
      format.html { redirect_to biometrias_url, notice: 'Biometria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_biometria
    @biometria = Biometria.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def biometria_params
    params.require(:biometria).permit(:paciente_id, :globulos_rojos, :globulos_blancos, :plaquetas, :hemoglobina, :hematocrito, :neutrofilos)
  end
end
