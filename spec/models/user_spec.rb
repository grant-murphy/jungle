require 'rails_helper'

RSpec.describe User, :type => :model do
  describe 'Validations' do

    before(:each) do
      @user = User.new(
        name: 'Grant', 
        email: 'test@test.com', 
        password: 'grantr', 
        password_confirmation: 'grantr')
    end
      
      it 'will be valid' do
        @user.save
        expect(@user).to be_valid
      end
      
      it 'will not be valid if email does not exist' do
      @user.email= nil
      @user.save
      expect(@user).to_not be_valid
      end
    end
end 