require_relative 'spec_helper'
require_relative '../lib/scraper'
require_relative '../lib/udacity_scraper'
require_relative '../lib/indeed_scraper'
require_relative '../lib/remoteio_scraper'

require 'nokogiri'
require 'httparty'

RSpec.describe Scraper do
  subject { Scraper.new }
  it 'checks if webpage is parsed' do
    expect(subject.send(:parsing_page, 'https://www.udacity.com/courses/all').text.instance_of?(String)).to be_truthy
  end

  it 'checks if file is written' do
    subject.write('testing.csv', [1, 2, 3, 4, 5], 'tests')
    expect(File.exist?('testing.csv')).to be_truthy
  end
end
