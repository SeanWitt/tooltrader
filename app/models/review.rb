class Review < ApplicationRecord
  belongs_to :user, class_name: "author", foreign_key: "author_id",
end
