class CreateConfigs < ActiveRecord::Migration
  def change
    create_table :configs do |t|
      t.string :parametro
      t.string :descricao
      t.string :valor

      t.timestamps null: false
    end
  end
end
