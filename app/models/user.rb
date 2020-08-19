class User < ApplicationRecord
  has_many :tweets
  has_many :likes

  has_many :liked_tweets, through: :likes, sources: :likes

  # user.likes each do |like|
  #   like.tweet.ed
  # end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
