
razoes = ["Kamyla","Laura","Amanda","Alana"]

razoes.each do |razao|
	Customer.create! razao:razao	
end

User.create! name: "admin",email: "admin@gmail.com", password:"123454321", admin:true
User.create! name: "bergson",email: "bergsonsud@gmail.com", password:"30071991", admin:true
#User.create! name: "kamyla",email: "kamylasud@gmail.com", password:"30071991", admin:true
#User.create! name: "bruno",email: "brunosud@gmail.com", password:"30071991", admin:true
#User.create! name: "camila",email: "camilasud@gmail.com", password:"30071991", admin:true