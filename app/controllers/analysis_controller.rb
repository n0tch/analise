class AnalysisController < ApplicationController
	def index
		
	end

	def create
		@arquivo = params[:doc]
		
		@tipo = File.extname(@arquivo.original_filename)
		# File.exxtname extrai a extençao do arquivo.

		if @tipo == '.exe'
			flash[:notice] = "Impossivel Upar Arquivos Executaveis"
		else
			
			@texto = []

			File.open("/home/gustavo/web-app/analise/README.rdoc", "r").each do |file|
						# ^ arquivo de teste que se encontra em disco.
			    @texto << file
			end

			flash[:notice] = "Texto: #{@texto.to_s.split}"
			# metodo split coloca cada pakavra em uma posiçao diferente em um array
		end

		redirect_to root_path
	end
end
