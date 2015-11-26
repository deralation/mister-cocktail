class Dose < ActiveRecord::Base
  validates :description, presence: true
  validates :coctail, presence: true, uniqueness: true
  validates :ingredient, presence: true
  belongs_to :coctail
  belongs_to :ingredient
end
