class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @teaching = StudentRegistration.where(:user_id => current_user.id)

    @learning = StudentRegistration.where(:user_id => current_user.id)
  end
end
