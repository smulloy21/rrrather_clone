class Comment < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_many :votes, as: :voteable, :dependent => :destroy
end
