require_relative 'spec_helper'
require_relative '../lib/scraper'
require_relative '../lib/udacity_scraper'
require_relative '../lib/indeed_scraper'
require_relative '../lib/remoteio_scraper'
require 'nokogiri'

RSpec.describe IndeedScraper do
  let(:url) { 'https://www.indeed.com/jobs?q=Ruby+On+Rails&l=Remote&rbl=Remote&jlid=aaa2b906602aa8f5&sort=date' }

  subject { IndeedScraper.new(url) }

  it 'should create indeed_jobs.csv after invoking #scrap' do
    puts "We're testing if website scrapping from indeed.com works fine..."
    subject.scrap
    expect(File.exist?('indeed_jobs.csv')).to be_truthy
  end
end
