require 'rails_helper'

RSpec.describe Product, :type => :model do
  describe 'Validations' do
    before(:each) do
      @category = Category.new(id: 1, name: 'Apparel')
      @product = Product.new(name: 'Shirt', quantity: 1, price: 19.99, category: @category)
    end

    it 'will be valid  if all 4 fields are present' do
      @product.save
      expect(@product).to be_valid
      end

    it 'will not be valid if price is not present' do
      @product.price_cents = nil
      @product.save
      expect(@product).to_not be_valid
      end
      
      it 'will not be valid if quantity is not present' do
      @product.quantity = nil
      @product.save
      expect(@product).to_not be_valid
      end
      
      it 'will not be valid if category is not present' do
      @product.category = nil
      @product.save
      expect(@product).to_not be_valid
    end
  end
end