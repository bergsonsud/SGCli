class AddSrfToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :srf, :string
  end
end
