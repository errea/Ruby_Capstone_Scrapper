class Input_check
    require 'rbconfig'
    include RbConfig

    def display_clear
      case CONFIG['host_os']
      when /mswin|windows/i
        system('clr')
      when /linux|arch/i
        system('clear')
      end
    end