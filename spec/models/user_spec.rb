require 'rails_helper'

RSpec.describe User, type: :Model do
  let(:user) do
    User.new(name: 'Dee', 
    email: 'dee12@gmail.com', 
    password: 'dbk123', 
    confirmed_at: Time.now)
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

  it 'name should be 40 characters and less' do
    user.name = 'ds' * 30
    expect(user).to_not be_valid
  end
end
