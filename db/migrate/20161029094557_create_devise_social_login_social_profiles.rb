class CreateDeviseSocialLoginSocialProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :devise_social_login_social_profiles do |t|
      t.string :provider, null: false
      t.string :uid, null: false

      t.timestamps
    end

    add_index :devise_social_login_social_profiles, [:provider, :uid], unique: true
  end
end
