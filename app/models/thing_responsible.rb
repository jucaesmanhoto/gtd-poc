class ThingResponsible < ApplicationRecord
  belongs_to :thing
  belongs_to :responsable
end
