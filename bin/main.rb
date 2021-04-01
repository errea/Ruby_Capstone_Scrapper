#require_relative '../lib/input_check'
require_relative '../lib/scrapper'


@ecom = Scrape.new
@input_check = Input_check.new

def  show_ecom(product_name, product_price)
    
end

def ecom_get_index
  index = @ecommerce.user_menu_index
  amount = @ecommerce.ecom_amount
  @input_check.display_clear
  puts '+***************************+'
  puts 'Can you Please select an option?'
  index[0].each_with_index { |item, i| puts "#{i + 1}. #{item} (#{amount[i]} ecommerce)"}
  puts '+***************************+'
  user_answer = @input_check.num_check(gets.chomp.to_i, 1, index.length + 1)
  product_price = ''
  product_name = ''
  @ecommerce.user_menu_index[0].each_with_index {|item, index| name = item if index == (ans - 1)}
  @ecommerce.user_menu_index[1].each_with_index {|item, index| link = item if index == (ans - 1)}
  print_movies(link, product_name)
end

def user_menu #this is the main menu interface which the user would see
  @input_check.display_clear
  puts 'Menu'
  puts '+***********************+'
  puts '1. Show Products'
  puts '2. All Ecommerce Products'
  puts '3. Credits'
  puts '4. Exit'
  puts '+***********************+'
  input = @input_check.num_check(gets.chomp.to_i, 1,4)
  case input
  when 1
    ecom_get_index
  when 2
    menu_ecom
  when 3
    display_credits
  when 4
    finish_scrapping
  end
end


def display_credits
  display = Display.new
  display.display_clear
  puts '+----------------------------------------------------------------------------------+'
  puts '|       Thank you for Scrapping!                                            |'   
  puts '|                                                                                  |'
  puts '|                                                              BY:                     |'
  puts '|                                                              ERI                     |'
  puts '|                                                                                  MICROVERSE |'
  puts '+----------------------------------------------------------------------------------+'
  puts 'Press any key to go back to menu....'
  gets
  user_menu
end


def finish_scrapping    #when the user is done scrapper the site this method ends the process
  puts 'Good Bye!!! HAPPY product HAPPY customer'
end

def welcome_screen_user
  @input_check.display_clear
  puts '+***************************************+'
  puts 'Hello, You Are here!!!LOL, TAKE A TOUR'
  puts 'press any key to PROCEED'
  puts '+***************************************+'
  gets
  user_menu
end

welcome_screen_user