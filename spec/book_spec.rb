require_relative '../apps/book'

describe Book do
  before :all do
    @book = Book.new('leopold', 'sedar', 'bad', 'used', '1970-06-20')
  end

  it 'will override the parent method' do
    expect(@book.can_be_archived?).to eq(true)
  end

  it 'will return true if parents method returns true OR if cover_state equals "bad"' do
    expect(@book.can_be_archived?).to eq(true)
  end

  it 'otherwise, it should return false' do
    @book = Book.new('leopold', 'sedar', 'good', 'used', '2015-10-28')
    expect(@book.can_be_archived?).to eq(false)
  end
end