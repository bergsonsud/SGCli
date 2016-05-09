class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :parametro
      t.string :descricao
      t.string :valor

      t.timestamps null: false
    end
  end
end
