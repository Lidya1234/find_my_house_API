require 'rails_helper'

RSpec.describe House, type: :model do
  describe 'Associations' do
    it { should have_many(:favorites) }
  end
  describe 'relations' do
    it { should respond_to(:favorites) }
  end
end
