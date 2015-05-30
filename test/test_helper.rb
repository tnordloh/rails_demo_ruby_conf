ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  fixtures :all

  def login_as(user)
    session[:user_id] = user.id
  end

  def logout
    session.delete :user_id
  end

  def setup
    login_as User.find(1) if defined? session
  end
end
