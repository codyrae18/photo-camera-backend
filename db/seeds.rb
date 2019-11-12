# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cody = User.create(name: 'Cody', username: 'cody', password: 'cody')

nature = Category.create(title: "Nature", img_url: "https://images.unsplash.com/photo-1573427180994-64563bd7a439?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
architecture = Category.create(title: "Architecture", img_url: "https://images.unsplash.com/photo-1571427681977-2e29759c3cc3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
animals = Category.create(title: "Animals", img_url: "https://images.unsplash.com/photo-1553634208-34a05bcf43c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
travels = Category.create(title: "Travels", img_url: "https://images.unsplash.com/photo-1571497569639-7bd0fcd36c64?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
people = Category.create(title: "People", img_url: "https://images.unsplash.com/photo-1550607859-18c65c514263?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
food = Category.create(title: "Food", img_url: "https://images.unsplash.com/photo-1563661511730-510f2b7c8807?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
clothes = Category.create(title: "Clothes", img_url: "https://images.unsplash.com/photo-1505022610485-0249ba5b3675?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")


