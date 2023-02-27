puts "🌱 Seeding spices..."

# Seed your database here
Book.create(title: "Name of the Wind", author: "Patrick Rothfuss", bookshelf_id: 1, read: true, reader_id: 1)
Book.create(title: "A Wise Man's Fear", author: "Patrick Rothfuss", bookshelf_id: 1, read: true, reader_id: 1)
Book.create(title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling", bookshelf_id: 1, read: true, reader_id: 2)
Book.create(title: "The Complete Sherlock Holmes", author: "Sir Arthur Conan Doyle", bookshelf_id: 2, read: false, reader_id: 1)

Reader.create(name: 'Stella')
Reader.create(name: 'Brandin')
Reader.create(name: 'Elliot')

Bookshelf.create(genre: "Fantasy Fiction", location: "Living Room")
Bookshelf.create(genre: "Crime Fiction/Mystery", location: "Bedroom")
Bookshelf.create(genre: "Fantasy Thriller", location: "Bedroom")

puts "✅ Done seeding!"


 