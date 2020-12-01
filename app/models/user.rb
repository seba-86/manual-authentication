class User < ApplicationRecord
    has_secure_password
    validates_uniqueness_of :email, {case_sensitive: false}
    validates :email, presence: true

    has_many :stories

    def to_s
        self.name
    end
    
end
