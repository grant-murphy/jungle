require 'rails_helper'

RSpec.describe User, :type => :model do
  describe 'Validations' do
    before(:each) do
      @user = User.new(first_name: 'Grant', last_name: 'Murphy', email: 'test@test.com', password: 'grant', password_confirmation: 'grant')
    end

      it 'will not be valid if email does not exist' do
      @user.email = nil
      @user.save
      expect(@user).to_not be_valid
      end
    end
end