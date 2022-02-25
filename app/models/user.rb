class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
        :recoverable, :rememberable, :validatable
  has_one :payment  #the user will be required to make a payment once to sign up for the site
  accepts_nested_attributes_for :payment #The user accepts nested attributes  for payments through the form submission also. 
  #whenever we  sign up a user it's going to be handled by the registrations new form , in the form we are going to hit the user's table and payments table.
end
