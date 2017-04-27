class RecipeSuggestion < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
end
