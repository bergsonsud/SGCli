class Customer < ActiveRecord::Base
	include ActionView::Helpers::DateHelper
	belongs_to :group
	self.per_page = 5	
	
	validates :razao, presence: true, uniqueness: true,:case_sensitive => false
	
	validates :id_emp,:cnpj,:cpf,:logradouro,:numero,:bairro,:municipio,:estado,:telefone,:celular,:email,:contato,:group_id,:id_emp,presence: true


	validates :id_emp, numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },:length => { :in => 1..9 },if: 'id_emp.present?'
	validates :iss, uniqueness: true,numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },if: 'iss.present?'
	validates :cnpj, uniqueness: true,numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },length: { is: 14 },if: 'cnpj.present?'
	validates :cpf, numericality: true,format: { without: /[!-\/\@\^\~\`\(\)\[\]\>\<\=]/ },length: { is: 11 },if: 'cpf.present?'
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
		if email.present? and email2.present?
			"#{email} / #{email2}"
		else		
			"#{email} #{email2}"		
		end
	end

	def since
		"#{desde.strftime("%d/%m/%Y")}"
	end

	def howtime
		if desde.present?
			diff = Time.diff(desde.to_date, Time.now.to_date,'%y, %M, %w e %d')
			
			if diff[:day]==0 and diff[:month]==0 and diff[:year]==0 
				time_ago_in_words(desde)
			elsif diff[:day]<=6 and diff[:month]==0 and diff[:year]==0 
				Time.diff(desde.to_date, Time.now.to_date,'%d')[:diff]											
			elsif diff[:day]==0 and diff[:month]>=1 and diff[:year]==0
				Time.diff(desde.to_date, Time.now.to_date,'%M')[:diff]											
			elsif diff[:day]==0 and diff[:month]==0 and diff[:year]>=1
				Time.diff(desde.to_date, Time.now.to_date,'%y')[:diff]															
			else				
				Time.diff(desde.to_date, Time.now.to_date,'%y, %M e %d')[:diff]
			end
		end
	end

	def get_cnpj
		cnpj.sub(/(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/, "\\1.\\2.\\3/\\4-\\5") if cnpj.present?# ==> 69.103.604/0001-60
	end

	def calc_honorarios(index)
		(honorarios.to_f/100) * index
	end

	
end
