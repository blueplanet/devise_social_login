module DeviseSocialLogin
  class SocialProfile < ApplicationRecord
    validates :provider, presence: true
    validates :uid, presence: true, uniqueness: { scope: :provider }
  end
end
