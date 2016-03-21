class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :razao
      t.string :iss

      t.timestamps null: false
    end
  end
end
