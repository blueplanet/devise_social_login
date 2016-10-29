module DeviseSocialLogin
  class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    include Devise::Controllers::Rememberable
  end
end
