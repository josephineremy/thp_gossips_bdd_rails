class Gossip < ApplicationRecord
  belongs_to :user
  has_many :hastags
  has_many :tags, through: :hastags
  has_many :comments
end
