class Hastag < ApplicationRecord
  belongs_to :tag
  belongs_to :gossip
end
