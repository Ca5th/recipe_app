class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.text :name
      t.integer :time

      t.timestamps
    end
  end
end
