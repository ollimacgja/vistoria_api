class CreateFieldTypes < ActiveRecord::Migration
  def change
    create_table :field_types do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
