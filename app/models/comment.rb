class Comment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :joke
  belongs_to :user

  validates :message, presence: true
end
