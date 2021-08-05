class CalendarThing < ApplicationRecord
  # Things in the calendar
  belongs_to :thing

  # The thing goes to calendar once a dead line is estipulated
  validates :dead_line_timestamp, presence: true
end
