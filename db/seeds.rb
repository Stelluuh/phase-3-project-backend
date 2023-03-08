puts "🌱 Seeding spices..."

# Seed your database here
Book.create(title: "Name of the Wind", author: "Patrick Rothfuss", genre: "Fantasy Fiction", bookshelf_id: 1, read: "yes", reader: "Stella")
Book.create(title: "A Wise Man's Fear", author: "Patrick Rothfuss", genre: "Fantasy Fiction", bookshelf_id: 1, read: "yes", reader: "Stella")
Book.create(title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling", genre: "Fantasy Fiction", bookshelf_id: 2, read: "yes", reader: "Brandin" )
Book.create(title: "The Complete Sherlock Holmes", author: "Sir Arthur Conan Doyle", genre: "Crime Fiction/Mystery", bookshelf_id: 2, read: "No", reader: "Brandin")
Book.create(title: "Elliot's Perfect Picnic", author: "Mark & Deb Munson", genre: "Kids", bookshelf_id: 3, read: "Yes", reader: "Elliot")
Book.create(title: "Wish", author: "Emma Dodd", genre: "Kids", bookshelf_id: 3, read: "Yes", reader: "Elliot")
Book.create(title: "Grumpy Monkey", author: "Suzanne Lang", genre: "Kids", bookshelf_id: 3, read: "No", reader: "Elliot")

Bookshelf.create(location: "Living Room")
Bookshelf.create(location: "Bedroom")
Bookshelf.create(location: "KidsRoom")

puts "✅ Done seeding!"


 