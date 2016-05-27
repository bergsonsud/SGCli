class Customer < ActiveRecord::Base
	belongs_to :group
	self.per_page = 5	
	
	validates :razao, presence: true, uniqueness: true,:case_sensitive => false
	
	validates :id_emp,:iss,:cgf,:cei,:cod,:logradouro,:numero,:bairro,:municipio,:estado,:telefone,:celular,:email,:contato,:group_id,:id_emp,presence: true


	validates :id_emp, numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },:length => { :in => 1..9 },if: 'id_emp.present?'
	validates :iss, uniqueness: true,numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },if: 'iss.present?'
	validates :cnpj, uniqueness: true,numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },length: { is: 14 },if: 'cnpj.present?'
	validates :cpf, uniqueness: true,numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },length: { is: 11 },if: 'cpf.present?'
	validates :cgf, uniqueness: true,numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },if: 'cgf.present?'
	validates :cei, uniqueness: true,numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },length: { is: 12 },if: 'cei.present?'
	validates :cod, uniqueness: true,numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },:length => { :in => 1..30 },if: 'cod.present?'
	validates :telefone,numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },:length => { :in => 8..9 },if: 'telefone.present?'
	validates :telefone2,numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },:length => { :in => 8..9 },if: 'telefone2.present?'
	validates :telefone3,numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },:length => { :in => 8..9 },if: 'telefone3.present?'
	validates :celular,numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },:length => { :in => 8..9 },if: 'celular.present?'
	validates :celular2,numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },:length => { :in => 8..9 },if: 'celular2.present?'
	validates :cep, numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },length: { is: 8 },if: 'cep.present?'

	validates :contato, :length => { :minimum => 3},if: 'contato.present?'
	validates :contato2, :length => { :minimum => 3},if: 'contato2.present?'

	
	# validates :municipio,:estado, presence: true
	# validates :cnpj,:iss,presence: true
	# validates :cnpj,{length: { is: 14 },uniqueness: true, numericality: true,if: 'cnpj.present?'}
	# validates :iss,{length: { is: 14 },uniqueness: true, numericality: true,if: 'iss.present?'}




	def address
		if municipio.present? and estado.present?
			"#{logradouro}, #{numero} #{complemento} #{bairro} - #{municipio}-#{estado}"	
		elsif municipio.present?
			"#{logradouro}, #{numero} #{complemento} #{bairro} - #{municipio}"		
		elsif estado.present?
			"#{logradouro}, #{numero} #{complemento} - #{estado}"
		else
			"#{logradouro}, #{numero} #{complemento} #{bairro}"
		end
	end

	def get_cep
		" - #{cep}" if cep.present?		
	end

	def contatos
		if contato.present? and contato2.present?
			"- (#{contato}/#{contato2})"
		elsif contato.present? and !contato2.present?
			"- (#{contato})"
		elsif !contato.present? and contato2.present?
			"- (#{contato2})"
		else
			""
		end	
			
	end

		def phone_numbers
		"#{telefone} #{telefone2} #{telefone3}"
	end

	def mobilephone_numbers
		"#{celular} #{celular2}"
	end	

	def mail
		"#{email} #{email2}"		
	end

	def since
		"#{desde.strftime("%d/%m/%Y")}"
	end

	def get_cnpj
		cnpj.sub(/(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/, "\\1.\\2.\\3/\\4-\\5") if cnpj.present?# ==> 69.103.604/0001-60
	end

	
end
