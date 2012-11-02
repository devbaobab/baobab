class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    '/user/'+resource.id.to_s+'/edit'
  end
end