class InstituicaoCursosController < ApplicationController
  before_action :set_instituicao_curso, only: [:show, :edit, :update, :destroy]

  # GET /instituicao_cursos
  # GET /instituicao_cursos.json
  def index
    @instituicao_cursos = InstituicaoCurso.all
  end

  # GET /instituicao_cursos/1
  # GET /instituicao_cursos/1.json
  def show
  end

  # GET /instituicao_cursos/new
  def new
    @instituicao_curso = InstituicaoCurso.new
    @instituicaos = Instituicao.all
    @cursos = Curso.all
  end

  # GET /instituicao_cursos/1/edit
  def edit
  end

  # POST /instituicao_cursos
  # POST /instituicao_cursos.json
  def create
    @instituicao_curso = InstituicaoCurso.new(instituicao_curso_params)

    @instituicao_curso.instituicao = Instituicao.find(@instituicao_curso.instituicao_id)
    @instituicao_curso.curso = Curso.find(@instituicao_curso.curso_id)

    respond_to do |format|
      if @instituicao_curso.save
        format.html { redirect_to @instituicao_curso, notice: 'Instituicao curso was successfully created.' }
        format.json { render :show, status: :created, location: @instituicao_curso }
      else
        format.html { render :new }
        format.json { render json: @instituicao_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instituicao_cursos/1
  # PATCH/PUT /instituicao_cursos/1.json
  def update
    respond_to do |format|
      if @instituicao_curso.update(instituicao_curso_params)
        format.html { redirect_to @instituicao_curso, notice: 'Instituicao curso was successfully updated.' }
        format.json { render :show, status: :ok, location: @instituicao_curso }
      else
        format.html { render :edit }
        format.json { render json: @instituicao_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instituicao_cursos/1
  # DELETE /instituicao_cursos/1.json
  def destroy
    @instituicao_curso.destroy
    respond_to do |format|
      format.html { redirect_to instituicao_cursos_url, notice: 'Instituicao curso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instituicao_curso
      @instituicao_curso = InstituicaoCurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instituicao_curso_params
      params.require(:instituicao_curso).permit(:instituicao_id, :curso_id, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao)
    end
end
