class ContatoConfiguracaosController < ApplicationController
  before_action :set_contato_configuracao, only: [:show, :edit, :update, :destroy]

  # GET /contato_configuracaos
  # GET /contato_configuracaos.json
  def index
    @contato_configuracaos = ContatoConfiguracao.all
  end

  # GET /contato_configuracaos/1
  # GET /contato_configuracaos/1.json
  def show
  end

  # GET /contato_configuracaos/new
  def new
    @contato_configuracao = ContatoConfiguracao.new
  end

  # GET /contato_configuracaos/1/edit
  def edit
  end

  # POST /contato_configuracaos
  # POST /contato_configuracaos.json
  def create
    @contato_configuracao = ContatoConfiguracao.new(contato_configuracao_params)

    @contato_configuracao.dataDeInsercao = Time.now
    @contato_configuracao.inseridoPor = "Gustavo Soares" #adicionar gem devise

    @contato_configuracao.atualizadoPor = "Gustavo Soares" #adicionar gem devise
    @contato_configuracao.dataDeAtualizacao = Time.now

    respond_to do |format|
      if @contato_configuracao.save
        format.html { redirect_to @contato_configuracao, notice: 'Contato configuracao was successfully created.' }
        format.json { render :show, status: :created, location: @contato_configuracao }
      else
        format.html { render :new }
        format.json { render json: @contato_configuracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contato_configuracaos/1
  # PATCH/PUT /contato_configuracaos/1.json
  def update

    @contato_configuracao.atualizadoPor = "Gustavo Soares" #adicionar gem devise
    @contato_configuracao.dataDeAtualizacao = Time.now

    respond_to do |format|
      if @contato_configuracao.update(contato_configuracao_params)
        format.html { redirect_to @contato_configuracao, notice: 'Contato configuracao was successfully updated.' }
        format.json { render :show, status: :ok, location: @contato_configuracao }
      else
        format.html { render :edit }
        format.json { render json: @contato_configuracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contato_configuracaos/1
  # DELETE /contato_configuracaos/1.json
  def destroy
    @contato_configuracao.destroy
    respond_to do |format|
      format.html { redirect_to contato_configuracaos_url, notice: 'Contato configuracao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contato_configuracao
      @contato_configuracao = ContatoConfiguracao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contato_configuracao_params
      params.require(:contato_configuracao).permit(:smtp, :porta, :host, :email, :senha, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao)
    end
end
