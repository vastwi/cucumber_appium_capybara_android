require 'capybara'
require 'capybara/rspec'
require 'capybara/rspec/matchers'
require 'capybara/dsl'
require 'capybara/session'
require 'selenium-webdriver'
require 'pry'
require 'pageify'
require 'pageify/capybara'
require 'rspec'
require 'rspec'
require 'capybara-screenshot/cucumber'
include Capybara::DSL


@@capabilities =
    {
        'appium-version' => '1.0',
        'platformName' => 'Android',
        'platformVersion' => '4.4',
        'deviceName' => 'Pam_testing',
        'aut' => 'it.gruppopam.store_replenishment.dev',
    }

Capybara.default_driver = :appium
Capybara.default_selector = :id

Capybara.save_and_open_page_path = '../test_artifacts/cucumber_output/'
Capybara::Screenshot.prune_strategy = { keep: 2 }