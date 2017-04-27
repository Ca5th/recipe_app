class Ingredient < ApplicationRecord
  has_many :recipe_suggestions
  has_many :recipes, through: :recipe_suggestions

  validates :name, presence: true
end
