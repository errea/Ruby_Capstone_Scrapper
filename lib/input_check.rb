class Imputcheck
    require 'rbconfig'
    include RbConfig

    def num_checker()
     
    end
  
    def display_clear
      case CONFIG['host_os']
      when /mswin|windows/i
        system('clr')
      when /linux|arch/i
        system('clear')
      end
    end