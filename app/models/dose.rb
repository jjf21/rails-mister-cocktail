class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates_uniqueness_of :ingredient_id, :cocktail_id
  validates :name, uniqueness: true, presence: true
end
