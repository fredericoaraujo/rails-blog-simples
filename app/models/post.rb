class Post < ApplicationRecord
    validate :title, :author, :body, presence: true

    has_many: comments
end
