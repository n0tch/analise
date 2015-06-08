class ApresentacaoEbooksController < ApplicationController
  before_action :set_apresentacao_ebook, only: [:show, :edit, :update, :destroy]

  # GET /apresentacao_ebooks
  # GET /apresentacao_ebooks.json
  def index
    @apresentacao_ebooks = ApresentacaoEbook.all
  end

  # GET /apresentacao_ebooks/1
  # GET /apresentacao_ebooks/1.json
  def show
  end

  # GET /apresentacao_ebooks/new
  def new
    @apresentacao_ebook = ApresentacaoEbook.new
  end

  # GET /apresentacao_ebooks/1/edit
  def edit
  end

  # POST /apresentacao_ebooks
  # POST /apresentacao_ebooks.json
  def create
    @apresentacao_ebook = ApresentacaoEbook.new(apresentacao_ebook_params)

    respond_to do |format|
      if @apresentacao_ebook.save
        format.html { redirect_to @apresentacao_ebook, notice: 'Apresentacao ebook was successfully created.' }
        format.json { render :show, status: :created, location: @apresentacao_ebook }
      else
        format.html { render :new }
        format.json { render json: @apresentacao_ebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apresentacao_ebooks/1
  # PATCH/PUT /apresentacao_ebooks/1.json
  def update
    respond_to do |format|
      if @apresentacao_ebook.update(apresentacao_ebook_params)
        format.html { redirect_to @apresentacao_ebook, notice: 'Apresentacao ebook was successfully updated.' }
        format.json { render :show, status: :ok, location: @apresentacao_ebook }
      else
        format.html { render :edit }
        format.json { render json: @apresentacao_ebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apresentacao_ebooks/1
  # DELETE /apresentacao_ebooks/1.json
  def destroy
    @apresentacao_ebook.destroy
    respond_to do |format|
      format.html { redirect_to apresentacao_ebooks_url, notice: 'Apresentacao ebook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apresentacao_ebook
      @apresentacao_ebook = ApresentacaoEbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apresentacao_ebook_params
      params.require(:apresentacao_ebook).permit(:conteudo, :inseridoPor, :dataDeInsercao, :atualizadoPor, :dataDeAtualizacao)
    end
end
