class User < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true
  belongs_to :color
end
