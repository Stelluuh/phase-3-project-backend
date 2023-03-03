puts "🌱 Seeding spices..."

# Seed your database here
Book.create(title: "Name of the Wind", author: "Patrick Rothfuss", genre: "Fantasy Fiction", bookshelf_id: 1, read: true, reader: "Stella")
Book.create(title: "A Wise Man's Fear", author: "Patrick Rothfuss", genre: "Fantasy Fiction", bookshelf_id: 1, read: true, reader: "Stella")
Book.create(title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling", genre: "Fantasy Fiction", bookshelf_id: 1, read: true, reader: "Brandin")
Book.create(title: "The Complete Sherlock Holmes", author: "Sir Arthur Conan Doyle", genre: "Crime Fiction/Mystery", bookshelf_id: 2, read: false, reader: "Brandin")

Bookshelf.create(location: "Living Room")
Bookshelf.create(location: "Bedroom")
Bookshelf.create(location: "KidsRoom")

puts "✅ Done seeding!"


 