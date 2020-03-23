class User < ApplicationRecord
    has_many :heros
    validates_uniqueness_of :username
    validates_presence_of :username, :password
    has_secure_password
end
