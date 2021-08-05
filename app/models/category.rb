class Category < ApplicationRecord
  # categories of things that don't need any action
  # Default ones are Trash, Incubation and Reference
  # instantiated in the seeds.rb file

  belongs_to :duration
  has_many :category_things
  has_many :things, through: :category_things
end
