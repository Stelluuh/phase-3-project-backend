class Bookshelf < ActiveRecord::Base
    has_many :books
    has_many :readers, through: :books # delete this!
end
