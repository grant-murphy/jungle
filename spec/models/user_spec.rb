require 'rails_helper'

RSpec.describe Product, :type => :model do
  describe 'Validations' do
    before(:each) do
      @user = Category.new(id: 1, name: 'Apparel')
      @product = Product.new(name: 'Shirt', quantity: 1, price: 19.99, category: @category)
    end

      
      it 'will not be valid if quantity is not present' do
      @product.quantity = nil
      @product.save
      expect(@product).to_not be_valid
      end
      

  end
end