ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'database_cleaner'
require 'capybara/rspec'
require 'email_spec'
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

DEFAULT_HOST = "lvh.me"
DEFAULT_PORT = 3000


RSpec.configure do |config|
  Capybara.default_host = 'http://#{DEFAULT_HOST}'
  Capybara.server_port = DEFAULT_PORT
  Capybara.app_host = 'http://#{DEFAULT_HOST}:#{Capybara.server_port}'

  config.include Rails.application.routes.url_helpers
  config.include FactoryGirl::Syntax::Methods
  config.include EmailSpec::Helpers
  config.include EmailSpec::Matchers
  config.include FactoryGirl::Syntax::Methods
  config.include Capybara::DSL
  #config.include Devise::TestHelpers, type: :controller
  config.order = "random"

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
    Apartment::Database.reset
    drop_schemas
    Capybara.app_host = 'http://lvh.me'
    reset_mailer
  end

  def switch_to_subdomain(subdomain)
    Capybara.app_host = 'http://#{subdomain}.{DEFAULT_HOST}:#{DEFAULT_PORT}'
  end
end
