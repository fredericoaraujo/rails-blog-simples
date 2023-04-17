class Author < ApplicationRecord
  belongs_to :post

  validate :author, :body, presence: true
end
