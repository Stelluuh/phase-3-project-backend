require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # READ - all
  get '/books' do
    books = Book.all.order(:title)
    books.to_json
  end

  # READ - a single book
  get '/books/:id' do
    book = Book.find(params[:id])
    book.to_json
  end

  # CREATE
  get '/books' do
    books = Book.create(
      title: params[:title],
      author: params[:author],
      bookshelf_id: params[:bookshelf_id],
      read: params[:read],
      reader_id: params[:reader]
    )
    books.to_json
  end

  # UPDATE
  get '/books/:id' do
    book = Book.find(params[:id])
    book.update(
      bookshelf_id: params[:bookshelf_id],
      read: params[:read],
      reader_id: params[:reader]
    )
    book.to_json
  end

  # DELETE - a single book
  get '/books/:id' do
    book = Book.find(params[:id])
    book.destroy
    book.to_json
  end
end