class ClasseGramaticalsController < ApplicationController
  before_action :set_classe_gramatical, only: [:show, :edit, :update, :destroy]

  # GET /classe_gramaticals
  # GET /classe_gramaticals.json
  def index
    @classe_gramaticals = ClasseGramatical.all
  end

  # GET /classe_gramaticals/1
  # GET /classe_gramaticals/1.json
  def show
  end

  # GET /classe_gramaticals/new
  def new
    @classe_gramatical = ClasseGramatical.new
    @idiomas = Idioma.all
  end

  # GET /classe_gramaticals/1/edit
  def edit
    @idiomas = Idioma.all
  end

  # POST /classe_gramaticals
  # POST /classe_gramaticals.json
  def create
    @classe_gramatical = ClasseGramatical.new(classe_gramatical_params)
    @classe_gramatical.idioma = Idioma.find(@classe_gramatical.idioma_id)

    @classe_gramatical.dataDeInsercao = Time.now
    @classe_gramatical.inseridoPor = "Gustavo Soares" #adicionar gem devise

    @classe_gramatical.atualizadoPor = "Gustavo Soares" #adicionar gem devise
    @classe_gramatical.dataDeAtualizacao = Time.now

    respond_to do |format|
      if @classe_gramatical.save
        format.html { redirect_to @classe_gramatical, notice: 'Classe gramatical was successfully created.' }
        format.json { render :show, status: :created, location: @classe_gramatical }
      else
        format.html { render :new }
        format.json { render json: @classe_gramatical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classe_gramaticals/1
  # PATCH/PUT /classe_gramaticals/1.json
  def update

    @classe_gramatical.atualizadoPor = "Gustavo Soares" #adicionar gem devise
    @classe_gramatical.dataDeAtualizacao = Time.now
    
    respond_to do |format|
      if @classe_gramatical.update(classe_gramatical_params)
        format.html { redirect_to @classe_gramatical, notice: 'Classe gramatical was successfully updated.' }
        format.json { render :show, status: :ok, location: @classe_gramatical }
      else
        format.html { render :edit }
        format.json { render json: @classe_gramatical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classe_gramaticals/1
  # DELETE /classe_gramaticals/1.json
  def destroy
    @classe_gramatical.destroy
    respond_to do |format|
      format.html { redirect_to classe_gramaticals_url, notice: 'Classe gramatical was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classe_gramatical
      @classe_gramatical = ClasseGramatical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classe_gramatical_params
      params.require(:classe_gramatical).permit(:nome, :sigla, :flgStatus, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao, :idioma_id)
    end
end
