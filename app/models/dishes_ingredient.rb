class DishesIngredient < ApplicationRecord
  /se crea solo al crear la migracion de la tabla/
  belongs_to :dish
  belongs_to :ingredient
end
