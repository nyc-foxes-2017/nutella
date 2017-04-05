class Friendship < ApplicationRecord
  belongs_to :frienda, class_name: "User"
  belongs_to :friendb, class_name: "User"
  validates :frienda, :friendb, { presence: true }
  validates :frienda, { exclusion: { in: self.friends + self.requests_sent + self.requests_recieved }
  validates :friendb, { exclusion: { in: self.friends + self.requests_sent + self.requests_recieved }
end
