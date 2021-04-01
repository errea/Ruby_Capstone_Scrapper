require 'httparty'
require 'byebug'
require "open-uri"
require 'nokogiri'


class Scrape
    def initialize
            unparsed_page = HTTParty.get('https://payporte.com/new-arrivals.html?p=1')
            @parsed_page = Nokogiri::HTML(unparsed_page)
            byebug
          end
        
          def user_menu_index
            @index = []
            product_name = []
            product_price = []
            product_links = []
            #array_index_menu = @parsed.css
          end
        
          def ecom_count
            total_count = []
            @index[1].each_with_index do |item, i|
              unparsed_pages = HTTParty.get("https://payporte.com/new-arrivals.html")
              parsed_pages = Nokogiri::HTML(unparsed_pages)
              total_count[i] = parsed_pages.css('div.products.list.items.product-items').css('ol').count
            end
            total_count
          end
        
          def menu_ecom(input_product)
            unparsed_pages = HTTParty.get("https://payporte.com/new-arrivals.html")
            parsed_pages = Nokogiri::HTML(unparsed_pages)
            product_name = []
            product_links = []
            product_price = []
            array = parsed_pages.css('div.products.list.items.product-items').css('ol')
            array.length.times do |i|
              product_name.push(array[i].text)
              product_links.push(array[i].attributes['href'].value)
              product_price.push(array[i].text)
            end
            result.push(product_name)
            result.push(product_links)
            result.push(product_price)
            result
          end
        end
