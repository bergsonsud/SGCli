class AddCepToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :cep, :string
  end
end
