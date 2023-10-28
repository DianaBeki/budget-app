require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    User.new(name: 'Dee',
             email: 'dee12@gmail.com',
             password: 'dbk123')
  end
  before { user.save }

  it 'name should be present' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'name should be 2 characters or greater than' do
    user.name = 'b'
    expect(user).to_not be_valid
  end

  it 'name should be 40 characters or less' do
    user.name = 'd' * 41
    expect(user).to_not be_valid
  end
end
