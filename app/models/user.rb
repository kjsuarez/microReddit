class User < ActiveRecord::Base

before_save{self.email = email.downcase}

validates :userName, presence: true, length:{maximum: 25}
validates :password, presence: true, length:{minimum: 6, maximum: 20}
validates :email, presence: true, length:{minimum: 6, maximum: 20},
								uniqueness: { case_sensitive: false }
has_many :posts
has_many :comments
end
