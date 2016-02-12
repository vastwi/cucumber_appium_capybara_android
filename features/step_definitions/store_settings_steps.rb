Given(/^I am on the store settings screen$/) do
  page.find(:xpath, "//android.widget.TextView[@text='Store Id']").click
end

When(/^I enter the store id as "([^"]*)"$/) do |store_id|
  page.find(:xpath, "//android.widget.EditText[@resource-id='android:id/edit']").send_keys(store_id)
  page.find(:xpath, "//android.widget.Button[@text='OK']").click
end

And(/^I see the store id value as "([^"]*)" in settings screen$/) do |store_id|
  page.find(:xpath, "//android.widget.TextView[@resource-id='android:id/summary']").has_text?("532")
end