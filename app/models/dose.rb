class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates_uniqueness_of :ingredient_id, scope: :cocktail_id
  validates :description, presence: true, allow_blank: false
  validates :ingredient_id, presence: true, allow_blank: false
  validates :cocktail_id, presence: true, allow_blank: false
end
