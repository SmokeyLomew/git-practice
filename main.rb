def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end

def menu
  puts '1 Enter Git Command'
  puts '2 Exit'
  choice = gets.to_i
  case choice
    when 1
      puts 'Enter a git command'
      puts_git(gets.strip)
      menu
    when 2
      exit
    else
      puts 'Inavlid Choice'
      menu
  end
end

menu

require 'colorize'
require_relative "git"

Class MAIN
    include Git

    def menu
        puts 'MAIN MENU'.colorize(:cyan)
        puts '1 Enter Git Command'.colorize(:cyan)
        puts '2 Exit'.colorize(:cyan)
        choice = gets.to_i
        case choice
            when 1
                puts 'Enter a git command'.colorize(:green)
                Git.puts_git(gets.strip)
                menu
            when 2
                Git.config
            else
                puts 'Inavlid Choice'.colorize(:red)
                menu
            end
    end
end