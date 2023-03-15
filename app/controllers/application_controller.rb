require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  #------------BOOKS--------------
  # READ all books
  get '/books' do
    books = Book.all.order(:title)
    books.to_json(include: :bookshelf)
  end

  # CREATE a new book
  post '/books' do
    book = Book.create(
      title: params[:title], 
      author: params[:author],
      genre: params[:genre],
      bookshelf_id: params[:bookshelf_id],
      read: params[:read],
      reader: params[:reader]
    )
    book.to_json
  end

  # PATCH a single book
  patch '/books/:id' do
    book = Book.find(params[:id])
    book.update(
      title: params[:title],
      author: params[:author],
      genre: params[:genre],
      read: params[:read],
      reader: params[:reader]
    )
    book.to_json
  end

  # DESTROY a single book
  delete '/books/:id' do
    book = Book.find(params[:id])
    book.destroy
    book.to_json
  end
  
  #------------Bookshelves-------------
# READ all bookshelves
  get '/bookshelves' do
    bookshelf = Bookshelf.all
    bookshelf.to_json(include: :books)
  end

  # CREATE a bookshelf
  post '/bookshelves' do
    bookshelf = Bookshelf.create(
      location: params[:location]
    )
    bookshelf.to_json(include: :books)
  end
  
end
