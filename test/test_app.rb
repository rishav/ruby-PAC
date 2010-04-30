require 'rubygems'
require 'test/unit'
require "rack/test"
require "../my_app"
class HomepageTest < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    MyApp.new
  end
  
  def test_redirect_logged_in_users_to_dashboard
    get "/"
#:    follow_redirect!
    
   # assert_equal "http://example.org/redirected", last_request.url
    assert last_response.ok?
  end
end
