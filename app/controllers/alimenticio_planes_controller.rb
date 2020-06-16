class AlimenticioPlanesController < ApplicationController
  before_action :set_alimenticio_plan, only: [:show, :edit, :update, :destroy]

  # GET /alimenticio_planes
  # GET /alimenticio_planes.json
  def index
    @alimenticio_planes = AlimenticioPlan.all
  end

  # GET /alimenticio_planes/1
  # GET /alimenticio_planes/1.json
  def show
  end

  # GET /alimenticio_planes/new
  def new
    @alimenticio_plan = AlimenticioPlan.new
  end

  # GET /alimenticio_planes/1/edit
  def edit
  end

  # POST /alimenticio_planes
  # POST /alimenticio_planes.json
  def create
    @alimenticio_plan = AlimenticioPlan.new(alimenticio_plan_params)

    respond_to do |format|
      if @alimenticio_plan.save
        format.html { redirect_to @alimenticio_plan, notice: 'Alimenticio plan was successfully created.' }
        format.json { render :show, status: :created, location: @alimenticio_plan }
      else
        format.html { render :new }
        format.json { render json: @alimenticio_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alimenticio_planes/1
  # PATCH/PUT /alimenticio_planes/1.json
  def update
    respond_to do |format|
      if @alimenticio_plan.update(alimenticio_plan_params)
        format.html { redirect_to @alimenticio_plan, notice: 'Alimenticio plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @alimenticio_plan }
      else
        format.html { render :edit }
        format.json { render json: @alimenticio_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alimenticio_planes/1
  # DELETE /alimenticio_planes/1.json
  def destroy
    @alimenticio_plan.destroy
    respond_to do |format|
      format.html { redirect_to alimenticio_planes_url, notice: 'Alimenticio plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alimenticio_plan
      @alimenticio_plan = AlimenticioPlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alimenticio_plan_params
      params.require(:alimenticio_plan).permit(:id_paciente, :grupo_alimentos, :subgrupo_alimentos, :equivalente, :desayuno, :colacion1, :comida, :colacion2, :cena)
    end
end
