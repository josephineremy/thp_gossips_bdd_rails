class Tag < ApplicationRecord
  has_many :hastags
  has_many :gossips, through: :hastags
end
