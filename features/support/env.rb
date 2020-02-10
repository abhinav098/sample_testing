require 'selenium-webdriver'
require 'byebug'
require 'rspec'

$driver = Selenium::WebDriver.for :chrome

Before do
  $driver.get('https://www.linkedin.com/login')
end

After do
  $driver.quit
end

# for reports run =>
# cucumber -f pretty -f html -o report.html
# otherwise run => cucumber
