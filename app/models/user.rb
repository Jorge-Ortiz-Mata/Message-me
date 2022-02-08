class User < ApplicationRecord
    has_many :messages
    validates :username, presence: true, uniqueness: true, length: { minimum: 4 }
    validates :password, presence: true, length: { minimum: 4 }
    validates :password_confirmation, presence: true, length: { minimum: 4 }
    has_secure_password
end
