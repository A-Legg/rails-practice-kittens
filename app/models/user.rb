class User < ActiveRecord::Base
  has_secure_password

  has_many :kittens
  has_many :categories, through: :kittens

  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :name, presence: true, uniqueness: {case_sensitive: false}
end
