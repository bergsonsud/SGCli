class AddIdEmpToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :id_emp, :string
  end
end
