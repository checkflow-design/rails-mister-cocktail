class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  has_many :cocktails

  validates :description, presence: true
  validates :cocktail, :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
