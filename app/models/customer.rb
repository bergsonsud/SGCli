class Customer < ActiveRecord::Base
	self.per_page = 20

	def address
		"#{logradouro}, #{numero} #{complemento} #{bairro} - #{municipio}-#{estado}"		
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

end
