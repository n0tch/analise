class IdiomaAvisosController < ApplicationController
  before_action :set_idioma_aviso, only: [:show, :edit, :update, :destroy]

  # GET /idioma_avisos
  # GET /idioma_avisos.json
  def index
    @idioma_avisos = IdiomaAviso.all
  end

  # GET /idioma_avisos/1
  # GET /idioma_avisos/1.json
  def show
  end

  # GET /idioma_avisos/new
  def new
    @idioma_aviso = IdiomaAviso.new
  end

  # GET /idioma_avisos/1/edit
  def edit
  end

  # POST /idioma_avisos
  # POST /idioma_avisos.json
  def create
    @idioma_aviso = IdiomaAviso.new(idioma_aviso_params)

    respond_to do |format|
      if @idioma_aviso.save
        format.html { redirect_to @idioma_aviso, notice: 'Idioma aviso was successfully created.' }
        format.json { render :show, status: :created, location: @idioma_aviso }
      else
        format.html { render :new }
        format.json { render json: @idioma_aviso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idioma_avisos/1
  # PATCH/PUT /idioma_avisos/1.json
  def update
    respond_to do |format|
      if @idioma_aviso.update(idioma_aviso_params)
        format.html { redirect_to @idioma_aviso, notice: 'Idioma aviso was successfully updated.' }
        format.json { render :show, status: :ok, location: @idioma_aviso }
      else
        format.html { render :edit }
        format.json { render json: @idioma_aviso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idioma_avisos/1
  # DELETE /idioma_avisos/1.json
  def destroy
    @idioma_aviso.destroy
    respond_to do |format|
      format.html { redirect_to idioma_avisos_url, notice: 'Idioma aviso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idioma_aviso
      @idioma_aviso = IdiomaAviso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idioma_aviso_params
      params.require(:idioma_aviso).permit(:idioma_id, :aviso_id)
    end
end
