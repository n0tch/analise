class AnalysisController < ApplicationController
	
	$root = Dir.pwd + "/files/"

	def index		
	end

	def show
		arquivo = params[:doc]
		if File.extname(arquivo.original_filename) == '.exe'
			flash[:notice] = "Impossivel Upar Arquivos Executaveis!"
			redirect_to root_path
		else
			save(arquivo)#função para salvar em disco
			texto = []
			IO.foreach( $root + arquivo.original_filename){|x| texto << x}
			outro = [] # GABIARRA!
			array.each{|f| outro << f.gsub(/\\n/,"").delete("\"").delete(",").delete(".").delete("!").delete("[").delete("]") } #retira a ma formatacao do texto
			outro = outro.join(" ")
			palavraValor = outro.split.inject(Hash.new(0)) { |h,v| h[v] += 1; h } #Conta as palavras e coloca em um hash

			#Ordena pela maior quantidade
			palavraValor = palavraValor.sort_by{|word, vzs| vzs}
			palavraValor.reverse!

			@resultado = retira_palavras(palavraValor)
			remove_arquivo(arquivo)
		end
	end

	def show_array
		arquivos = [:doc]
		
		@qnt_arquivos = arquivos.count
		redirect_to 'root_path'
	end

	private 

	def retira_palavras(hash)
		result = {}
		hash.each do |word, value|
			next if word == ','
			next if word == ''
			result[word] = value
		end
		result
	end

	def save(arquivo)
		File.open(Rails.root.join($root, arquivo.original_filename), 'wb') do |file|
      		file.write(arquivo.read)
    	end
	end

	def remove_arquivo(arquivo)
  		FileUtils.rm($root + arquivo.original_filename)
	end

	def analysis_params
      params.require(:keyword).permit(:key, :language, :video_id)
    end
end
