class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.belongs_to :user_id, index: true, foreign_key: true
      t.belongs_to :filial_id, index: true, foreign_key: true
      t.integer :tipo

      t.timestamps null: false
    end
  end
end
