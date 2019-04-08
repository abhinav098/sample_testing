require 'selenium-webdriver'
require 'rspec'

$driver = Selenium::WebDriver.for :chrome

Before do
  $driver.get('https://www.linkedin.com')
end

After do
  $driver.quit
end

# cucumber -f pretty -f html -o report.html
