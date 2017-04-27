class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.text :text
      t.integer :order
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
