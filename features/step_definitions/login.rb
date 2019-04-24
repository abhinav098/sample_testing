Given("User is on linkedin page") do
  expected_path =  'https://www.linkedin.com/'
  current_path = $driver.current_url
  expect(expected_path).to eq(current_path)
end

When("User enters email and password") do
  $driver.find_element(:css, '.login-email').send_keys("XXXXXXXXXXXX")
  $driver.find_element(:css, '.login-password').send_keys("XXXXXXXX")
end

When("Clicks submit button") do
  $driver.find_element(:css, '#login-submit').click
end

Then("User should be logged in with correct details") do
  expected_path = 'https://www.linkedin.com/feed/'
  current_path = $driver.current_url
  expect(current_path).to eq(expected_path)
end
