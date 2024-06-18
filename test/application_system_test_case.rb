# # test/application_system_test_case.rb

# class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
#   # Change :chrome with :headless_chrome
#   driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]
# end



# test/application_system_test_case.rb

require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  include Warden::Test::Helpers

  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]
end