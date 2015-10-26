require 'rails_helper'

describe User do
  it { should have_many :questions }
  it { should have_many :comments }
  it { should have_many :votes }
end
