class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :jokes
  has_many :comments

  validates :name, presence: true, uniqueness: true

end
