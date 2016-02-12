Before do |scenario|
  Capybara.register_driver :appium do |app|
    Capybara::Selenium::Driver.new(app,:browser=>:remote,:desired_capabilities => @@capabilities,:url => 'http://127.0.0.1:4723/wd/hub')
  end
  Capybara::Screenshot.register_driver(:appium) do |driver, path|
    driver.browser.save_screenshot(path)
  end
  $driver=Capybara.current_session.driver
end

After do |scenario|
  Capybara.current_session.driver.quit
end

at_exit do
  Capybara.current_session.driver.quit
end