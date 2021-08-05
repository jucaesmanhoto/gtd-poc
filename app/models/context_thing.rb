class ContextThing < ApplicationRecord
  belongs_to :thing
  belongs_to :context
end
