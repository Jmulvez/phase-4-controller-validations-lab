class Post < ApplicationRecord
    validates :title, presence: true
    validates :category, inclusion: ["Fiction", "Non-Fiction"]
    vslidates :content, length: { minimum: 100 }
end
