class User < ActiveRecord::Base
  
  has_secure_password 

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }

def self.authenticate_with_credentials(email, password)
  @user = User.find_by_email(email.downcase.split)
  if @user && @user.authenticate(password)
    @user
    # success logic, log them in
  else
    nil
    # failure, render login form
    end
  end
end