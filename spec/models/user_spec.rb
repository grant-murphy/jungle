require 'rails_helper'

RSpec.describe User, :type => :model do
  describe 'Validations' do

    before(:each) do
      @user = User.new(
        name: 'Grant', 
        email: 'test@test.com', 
        password: 'grantm', 
        password_confirmation: 'grantm')
    end
      
      it 'will be valid if all sections are filled out' do
        @user.save
        expect(@user).to be_valid
      end
      
      it 'will not be valid if email does not exist' do
      @user.email = nil
      @user.save
      expect(@user).to_not be_valid
      end

      it 'will not be valid if name does not exist' do
        @user.name = nil
        @user.save
        expect(@user).to_not be_valid
        end

      it 'will not be valid if password does not exist' do
        @user.password = nil
        @user.save
        expect(@user).to_not be_valid
        end

      it 'will not be valid if password_confirmation does not exist' do
        @user.password_confirmation = nil
        @user.save
        expect(@user).to_not be_valid
        end

      it 'will not be valid if password and password_confirmation do not match' do
        @user.password_confirmation = "grantmm"
        @user.save
        expect(@user).to_not be_valid
        end

      it 'will not be valid if password is shorter than 6 characters' do
        @user.password = "grant"
        @user.password_confirmation = "grant"
        @user.save
        expect(@user).to_not be_valid
        end
      end

      describe '.authenticate_with_credentials' do
        before(:each) do
          @user = User.new(
          name: 'Grant', 
          email: 'test@test.com', 
          password: 'grantm', 
          password_confirmation: 'grantm')
        end

        it 'will be valid if email and password are equal' do
          @user.save
          expect(User.authenticate_with_credentials(@user.email, @user.password)).not_to be nil
        end

        it 'will be valid when email has white-space' do
          @user.save
          expect(User.authenticate_with_credentials(' test@test.com ', 'grantm')).not_to be nil
        end

        it 'will be valid when email has upper and lower case letters combined' do
          @user.save
          expect(User.authenticate_with_credentials(' TeSt@test.com ', 'grantm')).not_to be nil
        end
  end
end 