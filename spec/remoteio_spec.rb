require_relative 'spec_helper'
require_relative '../lib/scraper'
require_relative '../lib/udacity_scraper'
require_relative '../lib/indeed_scraper'
require_relative '../lib/remoteio_scraper'
require 'nokogiri'

RSpec.describe RemoteIoScraper do
  subject { RemoteIoScraper.new([1, 2, 3]) }
  let(:search_combination) { [1, 2, 3] }
  let(:completed_url) { 'https://www.remote.io/remote-jobs?s=javascript,ruby-on-rails,reactjs' }

  it 'should return a complete url from #url_maker' do
    expect(subject.send(:url_maker, search_combination)).to eql(completed_url)
  end

  it 'should create remote_io.csv after invoking #scrap' do
    puts "We're testing if website scrapping from remote.io works fine..."
    subject.scrap
    expect(File.exist?('remote_io.csv')).to be_truthy
  end

  it 'should not create another file after invoking #scrap' do
    puts "We're testing if website scrapping from remote.io works fine..."
    subject.scrap
    expect(File.exist?('another_remote.csv')).to be_falsy
  end
end

RSpec.describe 'checking if files are created' do
  it 'should contains indeed_jobs.csv file' do
    expect(File.exist?('remote_io.csv')).to be_truthy
  end

  it 'should not contain another file' do
    expect(File.exist?('another_remote.csv')).to be_falsy
  end
end
