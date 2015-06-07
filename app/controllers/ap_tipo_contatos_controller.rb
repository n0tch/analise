class ApTipoContatosController < ApplicationController
  before_action :set_ap_tipo_contato, only: [:show, :edit, :update, :destroy]

  # GET /ap_tipo_contatos
  # GET /ap_tipo_contatos.json
  def index
    @ap_tipo_contatos = ApTipoContato.all
  end

  # GET /ap_tipo_contatos/1
  # GET /ap_tipo_contatos/1.json
  def show
  end

  # GET /ap_tipo_contatos/new
  def new
    @ap_tipo_contato = ApTipoContato.new
  end

  # GET /ap_tipo_contatos/1/edit
  def edit
  end

  # POST /ap_tipo_contatos
  # POST /ap_tipo_contatos.json
  def create
    @ap_tipo_contato = ApTipoContato.new(ap_tipo_contato_params)
    
    @ap_tipo_contato.inseridoPor = "Gustavo" #gem devise
    @ap_tipo_contato.dataDeInsercao = Time.now

    @ap_tipo_contato.atualizadoPor = "Gustavo" #Utilizar gem devise
    @ap_tipo_contato.dataDeAtualizacao = Time.now

    respond_to do |format|
      if @ap_tipo_contato.save
        format.html { redirect_to @ap_tipo_contato, notice: 'Ap tipo contato was successfully created.' }
        format.json { render :show, status: :created, location: @ap_tipo_contato }
      else
        format.html { render :new }
        format.json { render json: @ap_tipo_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ap_tipo_contatos/1
  # PATCH/PUT /ap_tipo_contatos/1.json
  def update

    @ap_tipo_contato.atualizadoPor = "Gustavo" #Utilizar gem devise
    @ap_tipo_contato.dataDeAtualizacao = Time.now

    respond_to do |format|
      if @ap_tipo_contato.update(ap_tipo_contato_params)
        format.html { redirect_to @ap_tipo_contato, notice: 'Ap tipo contato was successfully updated.' }
        format.json { render :show, status: :ok, location: @ap_tipo_contato }
      else
        format.html { render :edit }
        format.json { render json: @ap_tipo_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ap_tipo_contatos/1
  # DELETE /ap_tipo_contatos/1.json
  def destroy
    @ap_tipo_contato.destroy
    respond_to do |format|
      format.html { redirect_to ap_tipo_contatos_url, notice: 'Ap tipo contato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ap_tipo_contato
      @ap_tipo_contato = ApTipoContato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ap_tipo_contato_params
      params.require(:ap_tipo_contato).permit(:nome, :flgStatus, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao)
    end
end
