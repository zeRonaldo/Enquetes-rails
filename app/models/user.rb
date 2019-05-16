class User < ApplicationRecord
    has_secure_password
    has_many :enqueue
    has_many :answer
end
