#!/usr/bin/env ruby

require_relative '../lib/udacity_scraper'
require_relative '../lib/indeed_scraper'
require_relative '../lib/remoteio_scraper'

title = <<~MLS

  ╦   ╦┌─┐┌┐     ╔═╗┌─┐┬─┐┌─┐┌─┐┌─┐┬─┐
  ║║║├┤   ├┴┐  ╚═╗│      ├┬┘├─┤├─┘├┤   ├┬┘
  ╚╩╝└─┘└─┘  ╚═╝└─┘┴└─┴   ┴┴      └─┘┴└─

  by Eri \u2021

MLS
puts title
puts 'Welcome to My Awesome Web Scraper!'
puts 'You have a Choice to pick any of this three Sites to Scrap? (udacity / indeed / remote.io)'
input = ''

loop do
  input = gets.chomp
  break if ['udacity', 'indeed', 'remote.io'].include?(input)

  puts 'Oopss!!! Denied, You can enter any three of this: udacity / indeed / remote.io'
end

website = nil

case input
when 'udacity'
  url = 'https://www.udacity.com/courses/all'
  website = UdacityScraper.new(url)

when 'indeed'
  url = 'https://www.indeed.com/jobs?q=Ruby+On+Rails&l=Remote&rbl=Remote&jlid=aaa2b906602aa8f5&sort=date'

  website = IndeedScraper.new(url)
when 'remote.io'
  puts 'Welcome to webscraper for remote.io :)'
  puts 'The search keywords are as followed'
  puts '+************************************************+'
  puts '0:ruby, 1: javascript,2: ruby-on-rails,3: reactjs,4: python,5: java,6: php,7: kubernetes, 8: docker,9: flask'
  puts '+************************************************+'
  puts 'Please enter number / combination from above list (eg. 328 for reactjs, ruby-on-rails, and docker)'

  num = nil
  loop do
    num = gets.chomp.split('').map(&:to_i)
    break if num.all? { |i| i <= 9 && i >= 0 }

    puts 'Oopss!!! Denied! invalid search combination, Please enter a valid search combination'
  end

  website = RemoteIoScraper.new(num)
end

website.scrap
