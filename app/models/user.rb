class User < ApplicationRecord
  # validations
  has_secure_password
  validates :email, { presence: true, uniqueness: true }
  validates :password, { presence: true, length: { minimum: 6 } }
  validates :first_name, :last_name, { presence: true }
  # friendships
  def friends
    self.friendshipas.where("pending = false") + self.friendshipbs.where("pending = false")
  end

  def requests_sent
    self.friendshipas.where("pending = true")
  end

  def requests_recieved
    self.friendshipbs.where("pending = false")
  end
  # posts
  has_many :posts, foreign_key: :author_id
  has_many :posts_recieved, class_name: "Post", foreign_key: :recipient_id
  # comments
  has_many :comments
  private
  has_many :friendshipas, class_name: "Friendship", foreign_key: :frienda_id
  has_many :friendshipbs, class_name: "Friendship", foreign_key: :friendb_id
end
