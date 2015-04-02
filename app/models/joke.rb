class Joke < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :comments

  validates :line1, presence: true

  def self.by_newest
    order(:created_at).reverse
  end
end
