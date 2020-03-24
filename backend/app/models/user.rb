class User < ApplicationRecord
    has_many :heros

    validates_uniqueness_of :username
    has_secure_password
end
