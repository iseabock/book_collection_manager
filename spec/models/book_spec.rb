require 'rails_helper'

describe Book do
  subject { described_class.new }

  it 'is valid with valid attributes and a 10 digit isbn' do
    subject.isbn = '1234567890'
    subject.title = 'My Title'

    expect(subject).to be_valid
  end

  it 'is valid with valid attributes and a 13 digit isbn' do
    subject.isbn = '1234567890123'
    subject.title = 'My Title'

    expect(subject).to be_valid
  end

  it 'is not valid without a isbn' do
    subject.isbn = nil
    subject.title = 'My Title'

    expect(subject).to_not be_valid
  end

  it 'is not valid if isbn length is not equal to 10 or 13 chars in legnth' do
    subject.isbn = '123456789'
    subject.title = 'My Title'

    expect(subject).to_not be_valid
  end

  it 'is not valid if isbn length is not equal to 10 or 13 chars in legnth' do
    subject.isbn = '123456789012'
    subject.title = 'My Title'

    expect(subject).to_not be_valid
  end

  it 'is not valid if isbn length is not equal to 10 or 13 chars in legnth' do
    subject.isbn = '12345678901234'
    subject.title = 'My Title'

    expect(subject).to_not be_valid
  end

  it 'is not valid without a title' do
    subject.isbn = '1234567890'

    expect(subject).to_not be_valid
  end
end
