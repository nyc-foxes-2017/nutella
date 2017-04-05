class Post < ApplicationRecord
  belongs_to :author, class_name: "User"
  belongs_to :recipient, class_name: "User"
  has_many :comments
  has_many :likes, as: :likeable
  validates :author, :recipient, :content, { presence: true }
end
