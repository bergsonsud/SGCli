
razoes = ["Kamyla","Laura","Amanda","Alana"]

razoes.each do |razao|
	Customer.create! razao:razao	
end

User.create! email: "bergsonsud@gmail.com", password:"30071991"