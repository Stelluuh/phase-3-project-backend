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

  
end