class User < ActiveRecord::Base
    has_many :subscriptions
    has_many :animes, through: :subscriptions

end