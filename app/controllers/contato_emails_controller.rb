class ContatoEmailsController < ApplicationController
  before_action :set_contato_email, only: [:show, :edit, :update, :destroy]

  # GET /contato_emails
  # GET /contato_emails.json
  def index
    @contato_emails = ContatoEmail.all
  end

  # GET /contato_emails/1
  # GET /contato_emails/1.json
  def show
  end

  # GET /contato_emails/new
  def new
    @contato_email = ContatoEmail.new
    @ap_tipo_contato = ApTipoContato.all
  end

  # GET /contato_emails/1/edit
  def edit
  end

  # POST /contato_emails
  # POST /contato_emails.json
  def create
    @contato_email = ContatoEmail.new(contato_email_params)

    @contato_email.dataDeInsercao = Time.now
    @contato_email.inseridoPor = "Gustavo Soares" #adicionar gem devise

    @contato_email.atualizadoPor = "Gustavo Soares" #adicionar gem devise
    @contato_email.dataDeAtualizacao = Time.now

    @contato_email.ap_tipo_contato = ApTipoContato.find(@contato_email.ap_tipo_contato)

    respond_to do |format|
      if @contato_email.save
        format.html { redirect_to @contato_email, notice: 'Contato email was successfully created.' }
        format.json { render :show, status: :created, location: @contato_email }
      else
        format.html { render :new }
        format.json { render json: @contato_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contato_emails/1
  # PATCH/PUT /contato_emails/1.json
  def update

    @contato_email.atualizadoPor = "Gustavo Soares" #adicionar gem devise
    @contato_email.dataDeAtualizacao = Time.now

    respond_to do |format|
      if @contato_email.update(contato_email_params)
        format.html { redirect_to @contato_email, notice: 'Contato email was successfully updated.' }
        format.json { render :show, status: :ok, location: @contato_email }
      else
        format.html { render :edit }
        format.json { render json: @contato_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contato_emails/1
  # DELETE /contato_emails/1.json
  def destroy
    @contato_email.destroy
    respond_to do |format|
      format.html { redirect_to contato_emails_url, notice: 'Contato email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contato_email
      @contato_email = ContatoEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contato_email_params
      params.require(:contato_email).permit(:nome, :email, :flgStatus, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao, :ap_tipo_contato_id)
    end
end
