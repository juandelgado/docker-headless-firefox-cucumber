require 'selenium-webdriver'
require 'headless'

World do
  SampleWorld.new
end

class SampleWorld

  def driver
    @driver
  end

  def open_browser
    @headless = nil
    if(/darwin/ =~ RUBY_PLATFORM) == nil
      @headless = Headless.new
      @headless.start
    end
    @driver = Selenium::WebDriver.for :firefox
  end

  def close_browser
    @driver.quit
    if !@headless.nil?
      @headless.destroy
    end
  end
end
