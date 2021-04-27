# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

demo_day = Day.create(date: '4/26/21')

demo_mood_1 = Mood.create(happy_rating: 8, relaxed_rating: 7, calm_rating: 4, confidence_rating: 9, awake_rating: 6, journal_entry: 'Demo journal entry for an average day.', day_id: 1)