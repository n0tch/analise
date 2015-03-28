class AnalysisController < ApplicationController
	def index
		
	end

	def create
		@arquivo = params[:doc]
		
		# @tipo = File.extname(@arquivo.original_filename)
		# File.exxtname extrai a extençao do arquivo.

		if File.extname(@arquivo.original_filename) == '.exe'
			flash[:notice] = "Impossivel Upar Arquivos Executaveis"
		else
			@texto = []
			# File.open(@arquivo.to_s, "r").map{|file| @texto << file }
			IO.foreach("/home/gustavo/web-app/analise/teste.txt"){|x| @texto << x}

			@array = @texto.to_s.split(" ")
			# cria um array com uma posicao diferente para cada palavra

			@outro = []
			
			@array.each do |f|
				# @outro << f.gsub(/[\\n]/, '')
				@outro << f.gsub(/\\n/,"")
				# metodo strip retira os '\n' da string
				# metodo gsub retira os caracteres que sao passados como parametro
			end
			
			flash[:notice] = @outro
			# metodo split coloca cada pakavra em uma posiçao diferente em um array
		end
		redirect_to root_path
	end
end
