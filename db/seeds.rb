# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Note.create([
  { title: 'First Note', name: 'Alice', nickname: 'Ally', feeling: 'Happy', message: 'This is the first note message.' },
  { title: 'Second Note', name: 'Bob', nickname: 'Bobby', feeling: 'Excited', message: 'This is the second note message.' },
  { title: 'Third Note', name: 'Charlie', nickname: 'Chuck', feeling: 'Joyful', message: 'This is the third note message.' },
  { title: 'Fourth Note', name: 'David', nickname: 'Dave', feeling: 'Content', message: 'This is the fourth note message.' },
  { title: 'Fifth Note', name: 'Eve', nickname: 'Evie', feeling: 'Curious', message: 'This is the fifth note message.' },
  { title: 'Sixth Note', name: 'Frank', nickname: 'Franky', feeling: 'Pleased', message: 'This is the sixth note message.' },
  { title: 'Seventh Note', name: 'Grace', nickname: 'Gracie', feeling: 'Calm', message: 'This is the seventh note message.' },
  { title: 'Eighth Note', name: 'Hank', nickname: 'Hankie', feeling: 'Relaxed', message: 'This is the eighth note message.' },
  { title: 'Ninth Note', name: 'Ivy', nickname: 'Ivy', feeling: 'Excited', message: 'This is the ninth note message.' },
  { title: 'Tenth Note', name: 'Jack', nickname: 'Jacky', feeling: 'Happy', message: 'This is the tenth note message.' },
  { title: 'Eleventh Note', name: 'Kate', nickname: 'Katie', feeling: 'Joyful', message: 'This is the eleventh note message.' },
  { title: 'Twelfth Note', name: 'Liam', nickname: 'Liam', feeling: 'Content', message: 'This is the twelfth note message.' },
  { title: 'Thirteenth Note', name: 'Mia', nickname: 'Mimi', feeling: 'Curious', message: 'This is the thirteenth note message.' },
  { title: 'Fourteenth Note', name: 'Noah', nickname: 'Noe', feeling: 'Pleased', message: 'This is the fourteenth note message.' },
  { title: 'Fifteenth Note', name: 'Olivia', nickname: 'Liv', feeling: 'Calm', message: 'This is the fifteenth note message.' },
  { title: 'Sixteenth Note', name: 'Paul', nickname: 'Paulie', feeling: 'Relaxed', message: 'This is the sixteenth note message.' },
  { title: 'Seventeenth Note', name: 'Quinn', nickname: 'Quinny', feeling: 'Excited', message: 'This is the seventeenth note message.' },
  { title: 'Eighteenth Note', name: 'Rachel', nickname: 'Rach', feeling: 'Happy', message: 'This is the eighteenth note message.' },
  { title: 'Nineteenth Note', name: 'Sam', nickname: 'Sammy', feeling: 'Joyful', message: 'This is the nineteenth note message.' },
  { title: 'Twentieth Note', name: 'Tina', nickname: 'Tiny', feeling: 'Content', message: 'This is the twentieth note message.' }
])
