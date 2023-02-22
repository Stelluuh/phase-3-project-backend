puts "🌱 Seeding spices..."

# Seed your database here
Book.create(title: "Name of the Wind", author: "Patrick Rothfuss", read: true)
Book.create(title: "A Wise Man's Fear", author: "Patrick Rothfuss", read: true)
Book.create(title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling", read: false)
Book.create(title: "The Complete Sherlock Holmes", author: "Sir Arthur Conan Doyle", read: false)

Reader.create(name: 'Stella')
Reader.create(name: 'Brandin')
Reader.create(name: 'Elliot')

puts "✅ Done seeding!"


 