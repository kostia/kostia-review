Scrivito.configure do |config|
  config.choose_homepage { |env| Homepage.default }
  config.editing_auth do |env|
    Scrivito::User.system_user
  end
end
