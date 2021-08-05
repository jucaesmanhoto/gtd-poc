class KanbanColumnThing < ApplicationRecord
  belongs_to :thing
  belongs_to :kanban_column
end
