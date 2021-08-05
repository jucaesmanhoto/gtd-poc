class CategoryThing < ApplicationRecord
  belongs_to :thing
  belongs_to :category

  has_many :categories
end
