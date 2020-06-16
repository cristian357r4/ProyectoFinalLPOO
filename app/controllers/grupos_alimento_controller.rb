class GruposAlimentoController < ApplicationController
  before_action :set_grupo_alimento, only: [:show, :edit, :update, :destroy]

  # GET /grupos_alimento
  # GET /grupos_alimento.json
  def index
    @grupos_alimento = GrupoAlimento.all
  end

  # GET /grupos_alimento/1
  # GET /grupos_alimento/1.json
  def show
  end

  # GET /grupos_alimento/new
  def new
    @grupo_alimento = GrupoAlimento.new
  end

  # GET /grupos_alimento/1/edit
  def edit
  end

  # POST /grupos_alimento
  # POST /grupos_alimento.json
  def create
    @grupo_alimento = GrupoAlimento.new(grupo_alimento_params)

    respond_to do |format|
      if @grupo_alimento.save
        format.html { redirect_to @grupo_alimento, notice: 'Grupo alimento was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_alimento }
      else
        format.html { render :new }
        format.json { render json: @grupo_alimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupos_alimento/1
  # PATCH/PUT /grupos_alimento/1.json
  def update
    respond_to do |format|
      if @grupo_alimento.update(grupo_alimento_params)
        format.html { redirect_to @grupo_alimento, notice: 'Grupo alimento was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_alimento }
      else
        format.html { render :edit }
        format.json { render json: @grupo_alimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupos_alimento/1
  # DELETE /grupos_alimento/1.json
  def destroy
    @grupo_alimento.destroy
    respond_to do |format|
      format.html { redirect_to grupos_alimento_url, notice: 'Grupo alimento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_alimento
      @grupo_alimento = GrupoAlimento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grupo_alimento_params
      params.require(:grupo_alimento).permit(:nombre, :ingrediente, :cantidad)
    end
end
