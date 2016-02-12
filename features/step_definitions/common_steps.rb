When(/^I click on settings button$/) do
  page.find(:xpath, "//android.widget.ImageButton").click
  page.find(:xpath, "//android.widget.TextView[@resource-id='android:id/title']").click
end