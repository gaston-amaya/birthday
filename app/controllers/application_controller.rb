class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: -> { controller_name == 'birthday_messages' && action_name == 'birthday_lock' }

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      birthday_messages_path
    else
      super
    end
  end
end
