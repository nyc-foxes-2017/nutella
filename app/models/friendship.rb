class Friendship < ApplicationRecord
  belongs_to :frienda, class_name: "User"
  belongs_to :friendb, class_name: "User"
  validates :frienda, :friendb, { presence: true }
  # validates :frienda, { exclusion: { in: self.friendb.friends + self.friendb.requests_sent + self.frienda.requests_recieved } }
  # validates :friendb, { exclusion: { in: self.frienda.friends + self.frienda.requests_sent + self.friendb.requests_recieved } }
end
