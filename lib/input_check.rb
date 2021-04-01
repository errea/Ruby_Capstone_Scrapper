class Inputcheck
    require 'rbconfig'
    include RbConfig

    def num_check()
     
    end
  
    def display_clear
      case CONFIG['host_os']
      when /mswin|windows/i
        system('clr')
      when /linux|arch/i
        system('clear')
      end
    end