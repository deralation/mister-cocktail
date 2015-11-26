class Dose < ActiveRecord::Base
  belongs_to :coctail
  belongs_to :ingredient
end
