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
    {
        title: "Lorem Ipsum",
        body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        name: "Amomynous"
    },
    {
        title: "Sample Title",
        body: "sample body",
        name: "Agogygous"
    },
    {
        title: "Hello World",
        body: "sana ol hello world",
        name: "Nick"
    },
    {
        title: "Random Thoughts",
        body: "qwehjqwkhekjqhekjahskdjhqwe",
        name: "Jang Goe"
    },
])