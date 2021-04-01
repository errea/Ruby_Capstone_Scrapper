require 'nokogiri'
require 'httparty'
require 'byebug'
require "open-uri"

class Scrape
    def initialize

        unparsed = HTTParty.get('https://w')
        @parsed = Nokogiri::HTML(unparsed)
    end 



    url = "https://www.indeed.com/"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    job = Array.new
    job_listings_pages = parsed_page.css('td#resultsCol') #data for all the jobs
    set_page = 1
    per_page = job_listings_pages.count
   # total_pages = parsed_page.css('div#searchCountPages').text.split(' ')[1].gsub(',', '').to_i #22,365
    #last_page = (total.to_f/)
    job_listings_pages.each do | job_listings_page|  #iterating over our job listings
        job = { 
            title: job_listings_page.css('').text,
            company: job_listings_page.css('span.company').text,
            location: job_listings_page.css('span.location.accessible-contrast-color-location').text,
            type: job_listings_page.css('span.remote').test,
            description: job_listings_page.css('div.summary').text,
            date: job_listings_page.css('span.date.date-ally').test
         }
         jobs << job
    end
    byebug
end

scrape
