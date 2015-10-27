class Question < ActiveRecord::Base
  belongs_to :user
  has_many :options, :dependent => :destroy
  has_many :comments, :dependent => :destroy

  # scope :answered, -> { where(user_id: current_user.id) }
end
