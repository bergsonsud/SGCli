class AddECpfToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :e_cpf, :string
  end
end
