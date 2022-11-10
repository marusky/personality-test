class User < ApplicationRecord
  validates :nickname, uniqueness: true
end
