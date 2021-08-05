class UserThing < ApplicationRecord
  belongs_to :user
  belongs_to :thing
end
