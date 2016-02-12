Then(/^I should be order summary screen$/) do
  page.has_xpath?("//android.widget.Button[@text='Create a new order']")
end