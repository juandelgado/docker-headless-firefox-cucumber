Given(/^I open that web page$/) do
  @@driver.navigate.to 'https://google.com'
end

Then(/^I should be able to search$/) do
  element = @@driver.find_element(name: 'q')
  element.send_keys 'Hello World'
  element.submit
  puts @@driver.title
  sleep 2
end
