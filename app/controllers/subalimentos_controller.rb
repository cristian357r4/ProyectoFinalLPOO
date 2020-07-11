class SubalimentosController < ApplicationController
  before_action :require_user
  before_action :set_subalimento, only: [:show, :edit, :update, :destroy]

  # GET /subalimentos
  # GET /subalimentos.json
  def index
    @subalimentos = Subalimento.all
  end

  # GET /subalimentos/1
  # GET /subalimentos/1.json
  def show
  end

  # GET /subalimentos/new
  def new
    @subalimento = Subalimento.new
  end

  # GET /subalimentos/1/edit
  def edit
  end

  # POST /subalimentos
  # POST /subalimentos.json
  def create
    @subalimento = Subalimento.new(subalimento_params)

    respond_to do |format|
      if @subalimento.save
        format.html { redirect_to @subalimento, notice: 'Subgrupo de alimentos fue exitosamente creado.' }
        format.json { render :show, status: :created, location: @subalimento }
      else
        format.html { render :new }
        format.json { render json: @subalimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subalimentos/1
  # PATCH/PUT /subalimentos/1.json
  def update
    respond_to do |format|
      if @subalimento.update(subalimento_params)
        format.html { redirect_to @subalimento, notice: 'Informacion Actualizada.' }
        format.json { render :show, status: :ok, location: @subalimento }
      else
        format.html { render :edit }
        format.json { render json: @subalimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subalimentos/1
  # DELETE /subalimentos/1.json
  def destroy
    @subalimento.destroy
    respond_to do |format|
      format.html { redirect_to subalimentos_url, notice: 'Registro Eliminado.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_subalimento
    @subalimento = Subalimento.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def subalimento_params
    params.require(:subalimento).permit(:descripcion, :alimento_id)
  end
end
