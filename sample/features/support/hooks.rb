require 'selenium-webdriver'
require 'headless'

Before do
  @@headless = nil
  if(/darwin/ =~ RUBY_PLATFORM) == nil
    @@headless = Headless.new
    @@headless.start
  end
  @@driver = Selenium::WebDriver.for :firefox
end

After do
  @@driver.quit
  if !@@headless.nil?
    @@headless.destroy
  end
end
