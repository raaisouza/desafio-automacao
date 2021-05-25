
require "capybara"
require "capybara/cucumber"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome_headless
    config.default_max_wait_time = 5
    config.app_host = "http://automationpractice.com/"

    Capybara.page.driver.browser.manage.window.maximize



end

