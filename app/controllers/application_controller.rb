require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  #------------BOOKS--------------
  # READ all books
  get '/books' do
    books = Book.all.order(:title)
    books.to_json(include: :bookshelf)
  end

  # READ a single book
  get '/books/:id' do
    book = Book.find(params[:id])
    book.to_json
  end

  # CREATE a new book
  post '/books' do
    book = Book.create(
      title: params[:title],
      author: params[:author],
      genre: params[:genre],
      bookshelf_id: params[:bookshelf_id],
      read: params[:read],
      reader_id: params[:reader_id]
    )
    book.to_json
  end

  # PATCH a single book
  patch '/books/:id' do
    book = Book.find(params[:id])
    book.update(
      location: params[:location],
      read: params[:read]
    )
  end

  # DESTROY a single book
  delete '/books/:id' do
    book = Book.find(params[:id])
    book.destroy
    book.to_json
  end


  #------------READERS-------------
# READ all users
  get '/readers' do
    readers = Reader.all
    readers.to_json(include: {books: {include: :bookshelf}})
  end

  # CREATE a reader
  post '/readers' do
    reader = Reader.create(
      name: params[:name]
    )
    reader.to_json
  end
  
end