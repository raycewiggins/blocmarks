class User < ActiveRecord::Base
  has_many :topics
  has_many :bookmarks, dependent: :destroy
  has_many :likes, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def liked(bookmark)
     likes.where(bookmark_id: bookmark.id).first
  end
end
