class Post < ApplicationRecord
    validates :title, presence: true, length: {minimum:5, maximum:100}
    validates :content, presence: true, length: {minimum:5, maximum:100}

    belongs_to :user
end