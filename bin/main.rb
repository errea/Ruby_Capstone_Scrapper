require_relative '../lib/scrapper'
require_relative '../lib/input_check'

@input_check = Inputcheck.new
@ecom = Scrapper.new

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
    ecom_index_index
  when 2
  when 3
  when 4
    finish_scrapping
  end
end

def ecom_index_index
  

end

def finish_scrapping    #when the user is done scrapper the site this method ends the process
  puts 'Good Bye!!! HAPPY product HAPPY customer'
end

def welcome_screen_user
  @input_check.display_clear
  puts 'Hello, You Are here!!!LOL, TAKE A TOUR'
  puts 'press any key to PROCEED'
  gets
  main_menu
end

welcome_screen_user