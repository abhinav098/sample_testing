Given("User is on linkedin login") do
  expected_path =  'https://www.linkedin.com/login'
  current_path = $driver.current_url
  expect(expected_path).to eq(current_path)
end

When("User enters email and password") do
  $driver.find_element(:id, 'username').send_keys("XXXXXXXX")
  $driver.find_element(:css, '#password').send_keys("XXXXXX")
end

When("Clicks submit button") do
  $driver.find_element(:class, 'btn__primary--large').click
end

Then("User should be logged in with correct details") do
  expected_path = 'https://www.linkedin.com/feed/'
  current_path = $driver.current_url
  expect(current_path).to eq(expected_path)
end
