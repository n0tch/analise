class CursoResponsavelsController < ApplicationController
  before_action :set_curso_responsavel, only: [:show, :edit, :update, :destroy]

  # GET /curso_responsavels
  # GET /curso_responsavels.json
  def index
    @curso_responsavels = CursoResponsavel.all
  end

  # GET /curso_responsavels/1
  # GET /curso_responsavels/1.json
  def show
  end

  # GET /curso_responsavels/new
  def new
    @curso_responsavel = CursoResponsavel.new
  end

  # GET /curso_responsavels/1/edit
  def edit
  end

  # POST /curso_responsavels
  # POST /curso_responsavels.json
  def create
    @curso_responsavel = CursoResponsavel.new(curso_responsavel_params)

    respond_to do |format|
      if @curso_responsavel.save
        format.html { redirect_to @curso_responsavel, notice: 'Curso responsavel was successfully created.' }
        format.json { render :show, status: :created, location: @curso_responsavel }
      else
        format.html { render :new }
        format.json { render json: @curso_responsavel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curso_responsavels/1
  # PATCH/PUT /curso_responsavels/1.json
  def update
    respond_to do |format|
      if @curso_responsavel.update(curso_responsavel_params)
        format.html { redirect_to @curso_responsavel, notice: 'Curso responsavel was successfully updated.' }
        format.json { render :show, status: :ok, location: @curso_responsavel }
      else
        format.html { render :edit }
        format.json { render json: @curso_responsavel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curso_responsavels/1
  # DELETE /curso_responsavels/1.json
  def destroy
    @curso_responsavel.destroy
    respond_to do |format|
      format.html { redirect_to curso_responsavels_url, notice: 'Curso responsavel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curso_responsavel
      @curso_responsavel = CursoResponsavel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curso_responsavel_params
      params.require(:curso_responsavel).permit(:idioma_id, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao)
    end
end
