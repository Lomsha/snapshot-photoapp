class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]  #this skips the before action that  performs on all the controlllers, it skips it for the welcome controller index action (you don't need to be signed in to access the homepage)
  def index
  end
end
