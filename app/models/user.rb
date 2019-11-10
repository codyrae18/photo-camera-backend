class User < ApplicationRecord
    has_one_attached :image
    has_many :posts
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
