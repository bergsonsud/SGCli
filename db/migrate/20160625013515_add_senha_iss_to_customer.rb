class AddSenhaIssToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :senha_iss, :string
  end
end
