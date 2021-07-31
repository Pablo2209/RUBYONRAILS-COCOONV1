class Dish < ApplicationRecord
    /asociacion con la tabla intermedia/
    has_many :dishes_ingredients, dependent: :destroy

    /asociacion con ingredients a travez de la tabla intermedia/
    has_many :ingredients, through: :dishes_ingredients

    /Para disponer del formulario de ingredient y la tabla intermedia/
    accepts_nested_attributes_for :ingredients, :dishes_ingredients, reject_if: :all_blanck, allow_destroy: true

end
