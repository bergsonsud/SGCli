class AddOrgaoToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :orgao, :string
  end
end
