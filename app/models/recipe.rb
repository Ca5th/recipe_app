class Recipe < ApplicationRecord
  has_many :recipe_suggestions
  has_many :ingredients, through: :recipe_suggestions
  has_many :steps

  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :steps

  validates :name, presence: true
end
