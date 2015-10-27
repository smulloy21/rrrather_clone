class Option < ActiveRecord::Base
  belongs_to :question
  has_many :votes, as: :voteable, :dependent => :destroy

  # scope :chosen, -> (votes) { where(user: user) }
  # scope :chosen, lambda{|user| { :votes.where{ :user_id => user.id, :is_default => true } }

  def get_twin
    self.question.options.each do |option_sibling|
      if option_sibling != option
        return option_sibling
      end
    end
  end
end
