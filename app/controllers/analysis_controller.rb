class AnalysisController < ApplicationController
	def index
		
	end

	def create
		@arquivo = params[:doc]
		
		# @tipo = File.extname(@arquivo.original_filename)
		

		if File.extname(@arquivo.original_filename) == '.exe'
			# File.extname extrai a extençao do arquivo.
			flash[:notice] = "Impossivel Upar Arquivos Executaveis"
		else
			@texto = []
			# File.open(@arquivo.to_s, "r").map{|file| @texto << file }
			IO.foreach(Dir.pwd + "/Gemfile"){|x| @texto << x}

			@array = @texto.to_s.split(" ")
			# cria um array com uma posicao diferente para cada palavra

			@outro = []
			
			@array.each do |f|
				# @outro << f.gsub(/[\\n]/, '')
				# f = f.gsub(/\\n/,"")
				# f = f.delete "\""
				@outro << f.gsub(/\\n/,"").delete("\"")
				# metodo strip retira os '\n' da string
				# metodo gsub retira os caracteres que sao passados como parametro
			end
			
			@resultado = []

			frequencies = Hash.new(0)
			@outro.each { |word| frequencies[word] += 1 }
			frequencies = frequencies.sort_by {|a, b| b }
			frequencies.reverse!
			frequencies.each { |word, frequency| @resultado << word + " - " + frequency.to_s }

			# flash[:notice] = @resultado
			# metodo split coloca cada pakavra em uma posiçao diferente em um array
		end
		# redirect_to root_path
	end
end
