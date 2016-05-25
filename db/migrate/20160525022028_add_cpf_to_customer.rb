class AddCpfToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :cpf, :string
  end
end
