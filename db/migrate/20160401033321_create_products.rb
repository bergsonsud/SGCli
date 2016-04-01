class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :Nome
      t.float :Price

      t.timestamps null: false
    end
  end
end
