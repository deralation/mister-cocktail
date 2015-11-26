class Ingredient < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :doses
end
