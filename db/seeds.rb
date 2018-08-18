# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.create(title: 'Event1', description: 'Event1 description', start_time: Date.current - 2.days - 2.hours, end_time: Date.current - 2.days)

User.create(email: 'admin@tylerfay.com', password: '123456')

Booking.create(title: 'Booking1', description: 'Booking1 description', event_start: Date.current + 2.days - 2.hours, event_end: Date.current + 2.days, booker_name: 'Ricki', booker_email: 'example@ex.com')
