require 'rails_helper'

describe Comment do
  it { should belong_to :user }
  it { should belong_to :question }
  it { should have_many :votes }
end
