require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { User.new(name: 'Dee', email: 'dee12@gmail.com', password: 'dbk123', confirmed_at: Time.now) }
  before { user.save }

  let(:payment) { Payment.new(name: 'Josh', amount: 10) }
  before { payment.save }

  it 'should include a name attribute' do
    payment.name = nil
    expect(payment).to_not be_valid
  end

  it 'should include an amount attribute' do
    payment.amount = nil
    expect(payment).to_not be_valid
  end

  it 'amount attribute should be a number' do
    payment.amount = 'shey'
    expect(payment).to_not be_valid
  end

  it 'should include name attribute length of 2 characters or greater than' do
    payment.name = 'b'
    expect(payment).to_not be_valid
  end
end
