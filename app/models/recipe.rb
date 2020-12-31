class Recipe < ApplicationRecord
  has_many :ingredients, through: :recipe_ingredients
  has_many :recipe_ingredients

  accepts_nested_attributes_for :ingredients

  validates :name, length: { minimum: 1 }
end
