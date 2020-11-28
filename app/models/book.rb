class Book < ApplicationRecord
    has_one_attached :image # to attach image from active storage to class Book
    has_many :book_reviews
end
