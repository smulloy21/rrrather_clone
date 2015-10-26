require 'rails_helper'

describe Option do
  it { should belong_to :question }
  it { should have_many :votes }
end
