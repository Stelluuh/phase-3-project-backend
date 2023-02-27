puts "🌱 Seeding spices..."

# Seed your database here
Book.create(title: "Name of the Wind", author: "Patrick Rothfuss", genre: "Fantasy Fiction", bookshelf_id: 1, read: true, reader_id: 1)
Book.create(title: "A Wise Man's Fear", author: "Patrick Rothfuss", genre: "Fantasy Fiction", bookshelf_id: 1, read: true, reader_id: 1)
Book.create(title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling", genre: "Fantasy Fiction", bookshelf_id: 1, read: true, reader_id: 2)
Book.create(title: "The Complete Sherlock Holmes", author: "Sir Arthur Conan Doyle", genre: "Crime Fiction/Mystery", bookshelf_id: 2, read: false, reader_id: 1)

Reader.create(name: 'Stella')
Reader.create(name: 'Brandin')
Reader.create(name: 'Elliot')

Bookshelf.create(location: "Living Room")
Bookshelf.create(location: "Bedroom")
Bookshelf.create(location: "Bedroom")

puts "✅ Done seeding!"


 