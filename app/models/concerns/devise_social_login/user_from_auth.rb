module DeviseSocialLogin
  module UserFromAuth
    extend ActiveSupport::Concern
    included do
      has_many :social_profiles

      devise :omniauthable, omniauth_providers: [:facebook]
    end

    module ClassMethods
      def from_auth(auth)
        find_or_initialize_by(email: auth.info.email).tap do |user|
          if user.new_record?
            user.password = Devise.friendly_token[0, 20]
            user.confirmed_at = Time.current
          end

          user.social_profiles.find_or_initialize_by(provider: :facebook, uid: auth.uid)

          user.save!
        end
      end
    end
  end
end
