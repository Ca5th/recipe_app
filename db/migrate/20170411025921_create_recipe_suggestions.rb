class CreateRecipeSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_suggestions do |t|
      t.references :recipe, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
