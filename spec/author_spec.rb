require_relative '../apps/items'
require_relative '../apps/author'

describe Author do
  before :each do
    @author = Author.new('Peter', 'Abrahams')
  end

  it 'should recognize the first name of the author' do
    expect(@author.first_name).to eq 'Peter'
  end

  it 'it should recognize the last name of the author' do
    expect(@author.last_name).to eq 'Abrahams'
  end

  it 'should recognize the author id' do
    author = Author.new('Aimé', 'Césaire')
    allow(author).to receive(:id) { 1 }
    expect(author.id).to eq 1
  end

  it 'should recognize the author items' do
    item = Item.new('05/02/2020')
    @author.add_item(item)
    expect(@author.items.include?(item)).to eq true
  end
end