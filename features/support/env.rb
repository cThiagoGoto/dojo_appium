require 'rspec/expectations'
require 'appium_lib'
require 'pry'
require 'appium_console'
require 'selenium-webdriver'


if ENV['PLATFORM'] == 'ios'
    caps = Appium.load_appium_txt file: File.expand_path('~/Desktop/AutMobile/features/appiumIos.txt', __FILE__), verbose: true
    
    Appium::Driver.new(caps, true)
    Appium.promote_appium_methods Object

elsif ENV['PLATFORM'] == 'android'
    caps = Appium.load_appium_txt file: File.expand_path('~/Desktop/dojo_appium/features/appium.txt', __FILE__), verbose: true
    
    Appium::Driver.new(caps, true)
    Appium.promote_appium_methods Object
end
