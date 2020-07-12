class DietasController < ApplicationController
  before_action :require_user
  before_action :set_dieta, only: [:show, :edit, :update, :destroy]

  # GET /dietas
  # GET /dietas.json
  def index
    @dietas = Dieta.all
  end

  # GET /dietas/1
  # GET /dietas/1.json
  def show
  end

  # GET /dietas/new
  def new
    @dieta = Dieta.new
  end

  # GET /dietas/1/edit
  def edit
  end

  # POST /dietas
  # POST /dietas.json
  def create
    @dieta = Dieta.new(dieta_params)

    respond_to do |format|
      if @dieta.save
        format.html { redirect_to @dieta, notice: 'Dieta was successfully created.' }
        format.json { render :show, status: :created, location: @dieta }
      else
        format.html { render :new }
        format.json { render json: @dieta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dietas/1
  # PATCH/PUT /dietas/1.json
  def update
    respond_to do |format|
      if @dieta.update(dieta_params)
        format.html { redirect_to @dieta, notice: 'Dieta was successfully updated.' }
        format.json { render :show, status: :ok, location: @dieta }
      else
        format.html { render :edit }
        format.json { render json: @dieta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dietas/1
  # DELETE /dietas/1.json
  def destroy
    @dieta.destroy
    respond_to do |format|
      format.html { redirect_to dietas_url, notice: 'Dieta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dieta
    @dieta = Dieta.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dieta_params
    params.require(:dieta).permit(:paciente_id, :comida_id, :alimento_id, :subalimento_id, :cantidad, :estado)
  end
end
