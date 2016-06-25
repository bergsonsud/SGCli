class AddSefazToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :sefaz, :string
  end
end
