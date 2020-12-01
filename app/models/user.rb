class User < ApplicationRecord
    has_secure_password
    validates_uniqueness_of :email, {case_sensitive: false}
    validates :email, presence: true
end
