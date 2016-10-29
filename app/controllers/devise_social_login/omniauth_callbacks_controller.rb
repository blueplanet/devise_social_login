module DeviseSocialLogin
  class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    include Devise::Controllers::Rememberable

    def facebook
      auth = request.env['omniauth.auth']

      @user = User.from_auth auth
      if @user.persisted?
        sign_in_and_redirect @user, event: :authentication
        set_flash_message :notice, :success, kind: 'Facebook' if is_navigational_format?
      else
        session['devise.facebook_data'] = auth
        redirect_to new_user_registration_url
      end
    end

    private

      def failure
        redirect_to root_path
      end
  end
end
