
razoes = ["Kamyla","Laura","Amanda","Alana"]

razoes.each do |razao|
	Customer.create! razao:razao	
end
