Setting.create! parametro: "SGEMPNAM", descricao: "Nome da empresa", valor:"SGCli"
Setting.create! parametro: "SGVRELHO",descricao: "Valor utilizado no relatório de honorários", valor:"880" #valor salario minimo atual

Group.create! name: "A"
Group.create! name: "B"
Group.create! name: "C"

Customer.create! id_emp: "1", razao:"A",iss: 12345678901233,cnpj: 92345678901234,cgf: 12345678901234,cei: 123456789012,logradouro: "Rua c",numero: "100", bairro: "z",municipio: "Y",estado: "CE",telefone: "988998899",celular: "988999988",contato:"Fulano",email:"teste@gmail.com",cod:"123451231236", group_id: 1, honorarios:10	
Customer.create! id_emp: "2", razao:"B",iss: 12345678901232,cnpj: 82345678901234,cgf: 21345678901234,cei: 121456789012,logradouro: "Rua b",numero: "115", bairro: "z",municipio: "Y",estado: "CE",telefone: "988998899",celular: "988999988",contato:"Fulano",email:"teste@gmail.com",cod:"123412312356", group_id: 1, honorarios:15.252
Customer.create! id_emp: "3", razao:"C",iss: 12345678901231,cnpj: 72345678901234,cgf: 32345678901234,cei: 122456789012,logradouro: "Rua a",numero: "120", bairro: "z",municipio: "Y",estado: "CE",telefone: "988998899",celular: "988999988",contato:"Fulano",email:"teste@gmail.com",cod:"123222456", group_id: 2, honorarios:11.11
Customer.create! id_emp: "4", razao:"D",iss: 12345678901230,cnpj: 62345678901234,cgf: 42345678901234,cei: 124456789012,logradouro: "Rua y",numero: "12", bairro: "z",municipio: "Y",estado: "CE",telefone: "988998899",celular: "988999988",contato:"Fulano",email:"teste@gmail.com",cod:"1232456", group_id: 1, honorarios:30
Customer.create! id_emp: "5", razao:"E",iss: 12345678901235,cnpj: 52345678901234,cgf: 15345678901234,cei: 125456789012,logradouro: "Rua z",numero: "1", bairro: "z",municipio: "Y",estado: "CE",telefone: "988998899",celular: "988999988",contato:"Fulano",email:"teste@gmail.com",cod:"1234221231231356", group_id: 3, honorarios:5.35

User.create! name: "admin",email: "admin@gmail.com", password:"123454321", admin:true
User.create! name: "bergson",email: "bergsonsud@gmail.com", password:"30071991", admin:true
#User.create! name: "kamyla",email: "kamylasud@gmail.com", password:"30071991", admin:true
#User.create! name: "bruno",email: "brunosud@gmail.com", password:"30071991", admin:true
#User.create! name: "camila",email: "camilasud@gmail.com", password:"30071991", admin:true