class AddECnpjToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :e_cnpj, :string
  end
end
