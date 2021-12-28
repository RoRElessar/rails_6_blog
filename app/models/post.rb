class Post < ApplicationRecord
  belongs_to :author

  validates :title, :content, presence: true
  validates :title, uniqueness: true
end
