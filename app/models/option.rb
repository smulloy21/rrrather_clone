class Option < ActiveRecord::Base
  belongs_to :question
  has_many :votes, as: :voteable, :dependent => :destroy
end
