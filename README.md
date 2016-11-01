# DeviseSocialLogin
Add omniauth login to Rails Application via Devise.
Support follwing provider:

- [x] Facebook
- [ ] Twitter
- [ ] Github
- [ ] Google
- [ ] Line

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'devise_social_login'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install devise_social_login
```

## Usage
1. Add `omniauth_callbacks` key to the route setting:

    ```rb
    # config/routes.rb

    devise_for :users, controllers: { omniauth_callbacks: 'devise_social_login/omniauth_callbacks' }
    ```

2. Add provider settings to devise:

    ```rb
    # config/initializer/devise.rb

    ...
    config.omniauth :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'], scope: 'email', callback_url: 'http://localhost:3000/users/auth/facebook/callback'
    config.omniauth :twitter, ENV['TWITTER_APP_ID'], ENV['TWITTER_APP_SECRET']
    ...
    ```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
