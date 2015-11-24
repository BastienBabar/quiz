require 'rails_helper'

RSpec.describe User, type: :model do
  context 'create an user' do
    it 'creates an user' do
      create(:user)
    end
  end
end
