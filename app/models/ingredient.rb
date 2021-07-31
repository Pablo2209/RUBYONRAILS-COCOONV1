class Ingredient < ApplicationRecord
    /asociacion con la tabla intermedia/
    has_many :dishes_ingredients

    /asociacion con dishes a travez de la tabla intermedia/
    has_many :dishes, through: :dishes_ingredients


end
