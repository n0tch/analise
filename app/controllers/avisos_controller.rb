class AvisosController < ApplicationController
  before_action :set_aviso, only: [:show, :edit, :update, :destroy]

  # GET /avisos
  # GET /avisos.json
  def index
    @avisos = Aviso.all
  end

  # GET /avisos/1
  # GET /avisos/1.json
  def show
  end

  # GET /avisos/new
  def new
    @aviso = Aviso.new
  end

  # GET /avisos/1/edit
  def edit
  end

  # POST /avisos
  # POST /avisos.json
  def create
    @aviso = Aviso.new(aviso_params)
    
    @aviso.dataDeInsercao = Time.now
    @aviso.inseridoPor = "Gustavo Soares" #adicionar gem devise

    @aviso.atualizadoPor = "Gustavo Soares" #adicionar gem devise
    @aviso.dataDeAtualizacao = Time.now

    respond_to do |format|
      if @aviso.save
        format.html { redirect_to @aviso, notice: 'Aviso was successfully created.' }
        format.json { render :show, status: :created, location: @aviso }
      else
        format.html { render :new }
        format.json { render json: @aviso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avisos/1
  # PATCH/PUT /avisos/1.json
  def update

    @aviso.atualizadoPor = "Gustavo Soares" #adicionar gem devise
    @aviso.dataDeAtualizacao = Time.now

    respond_to do |format|
      if @aviso.update(aviso_params)
        format.html { redirect_to @aviso, notice: 'Aviso was successfully updated.' }
        format.json { render :show, status: :ok, location: @aviso }
      else
        format.html { render :edit }
        format.json { render json: @aviso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avisos/1
  # DELETE /avisos/1.json
  def destroy
    @aviso.destroy
    respond_to do |format|
      format.html { redirect_to avisos_url, notice: 'Aviso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aviso
      @aviso = Aviso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aviso_params
      params.require(:aviso).permit(:mensagem, :flgStatus, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao)
    end
end
