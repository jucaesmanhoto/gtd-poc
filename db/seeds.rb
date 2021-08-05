# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'cleaning data'
Horizon.delete_all
Recurrence.delete_all
Duration.delete_all
Category.delete_all
KanbanColumns.delete_all
User.delete_all

puts 'creating an admin user'
User.create(full_name: 'Admin', password: '123456', admin: true)

puts 'creating kanban Status'
KanbanColumns.create(name: 'To Do', position: 0)
KanbanColumns.create(name: 'Doing...', position: 1)
KanbanColumns.create(name: 'Done!', position: 2)

puts 'creating categories'
Category.create(name: 'Trash')
Category.create(name: 'Incubation')
Category.create(name: 'Reference')

puts 'creating durations'
Duration.create(name: 'blink', milliseconds: 1)
Duration.create(name: 'second', milliseconds: 1 * 1000)
Duration.create(name: 'minute', milliseconds: 60 * 1000)
Duration.create(name: 'hour', milliseconds: 60 * 60 * 1000)
Duration.create(name: 'part-time', milliseconds: 4 * 60 * 60 * 1000)
Duration.create(name: 'full-time', milliseconds: 8 * 60 * 60 * 1000)
Duration.create(name: 'half-day', milliseconds: 12 * 60 * 60 * 1000)
day = Duration.create(name: 'day', milliseconds: 24 * 60 * 60 * 1000)
week = Duration.create(name: 'week', milliseconds: 7 * 24 * 60 * 60 * 1000)
two_weeks = Duration.create(name: 'two weeks', milliseconds: 14 * 24 * 60 * 60 * 1000)
month = Duration.create(name: 'month', milliseconds: 30 * 24 * 60 * 60 * 1000)
Duration.create(name: 'year', milliseconds: 365 * 24 * 60 * 60 * 1000)

puts 'creating recurrences'
Recurrence.create(name: 'daily', duration: day)
Recurrence.create(name: 'weekly', duration: week)
Recurrence.create(name: 'biweekly', duration: two_weeks)
Recurrence.create(name: 'monthly', duration: month)

puts 'creating recurrences'
Horizon.create(name: 'Ground Floor')
Horizon.create(name: '1st Floor')
Horizon.create(name: '2nd Floor')
Horizon.create(name: '3rd Floor')
Horizon.create(name: '4th Floor')
Horizon.create(name: '5th Floor')