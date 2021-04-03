require_relative 'spec_helper'
require_relative '../lib/scraper'
require_relative '../lib/udacity_scraper'
require_relative '../lib/indeed_scraper'
require_relative '../lib/remoteio_scraper'
require 'nokogiri'

RSpec.describe UdacityScraper do
  subject { UdacityScraper.new('https://www.udacity.com/courses/all') }
  it 'should create udacity_courses.csv after invoking #scrap' do
    puts "We're testing if website scrapping from udacity.com works fine..."
    subject.scrap
    expect(File.exist?('udacity_courses.csv')).to be_truthy
  end

  it 'should not create another file after invoking #scrap' do
    puts "We're testing if website scrapping from udacity.com works fine..."
    subject.scrap
    expect(File.exist?('udacity_file.csv')).to be_falsy
  end
end
