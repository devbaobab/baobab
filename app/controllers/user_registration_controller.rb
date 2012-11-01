# app/controllers/user_registrations_controller.rb
class UserRegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
    super
  end

  def create
    super
    # add custom create logic here
  end
  
  def edit
    super
  end

  def update
    super
  end
end