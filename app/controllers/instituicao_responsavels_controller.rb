class InstituicaoResponsavelsController < ApplicationController
  before_action :set_instituicao_responsavel, only: [:show, :edit, :update, :destroy]

  # GET /instituicao_responsavels
  # GET /instituicao_responsavels.json
  def index
    @instituicao_responsavels = InstituicaoResponsavel.all
  end

  # GET /instituicao_responsavels/1
  # GET /instituicao_responsavels/1.json
  def show
  end

  # GET /instituicao_responsavels/new
  def new
    @instituicao_responsavel = InstituicaoResponsavel.new
    @instituicaos = Instituicao.all
  end

  # GET /instituicao_responsavels/1/edit
  def edit
  end

  # POST /instituicao_responsavels
  # POST /instituicao_responsavels.json
  def create
    @instituicao_responsavel = InstituicaoResponsavel.new(instituicao_responsavel_params)

    respond_to do |format|
      if @instituicao_responsavel.save
        format.html { redirect_to @instituicao_responsavel, notice: 'Instituicao responsavel was successfully created.' }
        format.json { render :show, status: :created, location: @instituicao_responsavel }
      else
        format.html { render :new }
        format.json { render json: @instituicao_responsavel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instituicao_responsavels/1
  # PATCH/PUT /instituicao_responsavels/1.json
  def update
    respond_to do |format|
      if @instituicao_responsavel.update(instituicao_responsavel_params)
        format.html { redirect_to @instituicao_responsavel, notice: 'Instituicao responsavel was successfully updated.' }
        format.json { render :show, status: :ok, location: @instituicao_responsavel }
      else
        format.html { render :edit }
        format.json { render json: @instituicao_responsavel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instituicao_responsavels/1
  # DELETE /instituicao_responsavels/1.json
  def destroy
    @instituicao_responsavel.destroy
    respond_to do |format|
      format.html { redirect_to instituicao_responsavels_url, notice: 'Instituicao responsavel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instituicao_responsavel
      @instituicao_responsavel = InstituicaoResponsavel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instituicao_responsavel_params
      params.require(:instituicao_responsavel).permit(:instituicao_id, :nome, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao)
    end
end
