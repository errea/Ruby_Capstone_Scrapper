require_relative 'spec_helper'
require_relative '../lib/scraper'
require_relative '../lib/udacity_scraper'
require_relative '../lib/indeed_scraper'
require_relative '../lib/remoteio_scraper'

RSpec.describe UdacityScraper do
  subject { UdacityScraper.new('https://www.udacity.com/courses/all') }
  it 'should create udacity_courses.csv after invoking #scrap' do
    puts "We're testing if website scrapping from udacity.com works fine..."
    subject.scrap
    expect(File.exist?('udacity_courses.csv')).to be_truthy
  end
end
