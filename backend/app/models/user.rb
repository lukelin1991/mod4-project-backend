class User < ApplicationRecord
    has_many :heros

    
    has_secure_password
end
