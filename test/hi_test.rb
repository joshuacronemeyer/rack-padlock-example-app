require File.join(File.dirname(__FILE__), '../hi')
require 'test/unit'
require 'capybara'
class HiTest < Test::Unit::TestCase
  
  include Capybara::DSL
  Capybara.default_driver = :selenium
  Capybara.app = HiApp
  
  ENV["RACK_ENV"] = "test"
  
  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
  
  def test_hi
    visit('/hi')
    page.has_content?('Hello World!')
  end
  
end