# Test for genre.rb
require_relative '../apps/genre'
require_relative '../apps/items'

describe Genre do
  before :all do
    @genre = Genre.new('James')
  end

  it 'should be initialized with a name' do
    expect(@genre.name).to eq('James')
  end

  it 'should have an id' do
    expect(@genre.id).to be_a(Integer)
  end

  it 'should have an array of items' do
    expect(@genre.items).to be_a(Array)
  end

  it 'should add items to the items array' do
    item = Item.new('11-12-1995')
    @genre.add_item(item)
    expect(@genre.items).to include(item)
  end
end