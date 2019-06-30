require File.join(File.dirname(__FILE__), 'gilded_rose')

describe GildedRose do
  describe '#update_quality' do
    it 'does not change the name' do
      items = [Item.new('Conjured Mana Cake', 10, 30)]
      for i in 1..10 do
        GildedRose.new(items).update_quality()        
      end
      expect(items[0].quality).to eq 10
    end
  end
end
