require 'selenium-webdriver'
require 'httparty'
require 'capybara/cucumber'
require 'site_prism'
require 'rspec'
require 'capybara'
require 'faker'
require 'cpf_faker'
require 'securerandom'
require 'mysql2'
require 'hash_validator'
require 'json'
require 'net/https'
require "base64"
require 'screen-recorder'

ENV_TYPE = ENV['ENV_TYPE']
BROWSER = ENV['BROWSER']
DATA = YAML.load_file(File.dirname(__FILE__) + "/data/#{ENV_TYPE}.yml")

#configurando driver do capybara
Capybara.configure do |config|
    # config.default_driver = :selenium_chrome # roda teste no chrome
    if BROWSER.eql? ("chrome_headless")
        config.default_driver = :selenium_chrome_headless # roda teste no chrome no modo headless
    elsif BROWSER.eql? ("chrome")
        config.default_driver = :selenium_chrome # roda teste no chrome
    elsif BROWSER.eql? ("firefox")
        config.default_driver = :selenium # roda teste no firefox
    end
    config.default_max_wait_time = 30
end