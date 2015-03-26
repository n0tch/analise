class AnalysisController < ApplicationController
	def index
		
	end

	def create
		@arquivo = params[:doc]
		@tipo = File.extname(@arquivo.original_filename)
		# flash[:notice] = "Passou Aqui. #{@tipo}"
		if @tipo == '.exe'
			flash[:notice] = "Impossivel Upar Arquivos Executaveis"
		else
			
			@texto = []

			File.open("/home/gustavo/web-app/analise/README.rdoc", "r").each do |infile|
			    @texto << infile
			end

			flash[:notice] = "Texto: #{@texto.to_s.split}"

		end

		redirect_to root_path
	end
end
